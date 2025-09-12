#include <cuda_runtime.h>
#include <mma.h>
#include <cuda_fp16.h>
#include <iostream>
#include <vector>
#include <cassert>

using namespace nvcuda;

// Tensor Core FP16 accumulation test
__global__ void tensorcore_fp16_accumulation_test(
    const half* __restrict__ a,
    const half* __restrict__ b,
    half* __restrict__ c_fp16,
    float* __restrict__ c_fp32,
    int M, int N, int K) {
    
    // WMMA fragments
    wmma::fragment<wmma::matrix_a, 16, 16, 16, half, wmma::row_major> a_frag;
    wmma::fragment<wmma::matrix_b, 16, 16, 16, half, wmma::col_major> b_frag;
    wmma::fragment<wmma::accumulator, 16, 16, 16, half> c_frag_fp16;  // FP16 accumulation
    wmma::fragment<wmma::accumulator, 16, 16, 16, float> c_frag_fp32; // FP32 accumulation

    int warpM = (blockIdx.x * blockDim.x + threadIdx.x) / warpSize;
    int warpN = (blockIdx.y * blockDim.y + threadIdx.y);
    
    // Bounds check
    if (warpM * 16 >= M || warpN * 16 >= N) return;

    // Initialize accumulator fragments to zero
    wmma::fill_fragment(c_frag_fp16, __float2half(0.0f));
    wmma::fill_fragment(c_frag_fp32, 0.0f);

    // Perform matrix multiplication with both accumulation types
    for (int i = 0; i < K; i += 16) {
        int aRow = warpM * 16;
        int aCol = i;
        int bRow = i;
        int bCol = warpN * 16;
        
        // Bounds check for K dimension
        if (aCol + 16 <= K && bRow + 16 <= K) {
            // Load the inputs
            wmma::load_matrix_sync(a_frag, a + aRow * K + aCol, K);
            wmma::load_matrix_sync(b_frag, b + bRow * N + bCol, N);
            
            // Perform the matrix operations
            wmma::mma_sync(c_frag_fp16, a_frag, b_frag, c_frag_fp16);  // FP16 accumulation
            wmma::mma_sync(c_frag_fp32, a_frag, b_frag, c_frag_fp32);  // FP32 accumulation
        }
    }

    // Store the outputs
    wmma::store_matrix_sync(c_fp16 + warpM * 16 * N + warpN * 16, c_frag_fp16, N, wmma::mem_row_major);
    wmma::store_matrix_sync(c_fp32 + warpM * 16 * N + warpN * 16, c_frag_fp32, N, wmma::mem_row_major);
}

// Function to check if current GPU supports FP16 accumulation
bool checkTensorCoreFP16Support() {
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);
    
    std::cout << "GPU: " << prop.name << std::endl;
    std::cout << "Compute Capability: " << prop.major << "." << prop.minor << std::endl;
    
    // Check for Tensor Core support
    if (prop.major >= 7) {
        std::cout << "✅ Tensor Cores supported" << std::endl;
        
        // Check for FP16 accumulation support (Ampere+)
        if (prop.major >= 8) {
            std::cout << "✅ FP16 accumulation supported" << std::endl;
            return true;
        } else {
            std::cout << "❌ FP16 accumulation NOT supported (only FP32 accumulation)" << std::endl;
            std::cout << "   GPU generation: " << (prop.major == 7 ? (prop.minor == 0 ? "Volta" : "Turing") : "Unknown") << std::endl;
            return false;
        }
    } else {
        std::cout << "❌ Tensor Cores NOT supported" << std::endl;
        return false;
    }
}

// Initialize test matrices
void initializeMatrices(std::vector<half>& a, std::vector<half>& b, int M, int N, int K) {
    // Initialize with small random values to avoid overflow in FP16
    for (int i = 0; i < M * K; i++) {
        a[i] = __float2half(((float)rand() / RAND_MAX - 0.5f) * 0.1f);
    }
    for (int i = 0; i < K * N; i++) {
        b[i] = __float2half(((float)rand() / RAND_MAX - 0.5f) * 0.1f);
    }
}

// Compare FP16 and FP32 accumulation results
void compareResults(const std::vector<half>& c_fp16, const std::vector<float>& c_fp32, 
                   int M, int N) {
    double maxAbsDiff = 0.0;
    double avgAbsDiff = 0.0;
    double maxRelDiff = 0.0;
    
    for (int i = 0; i < M * N; i++) {
        float val_fp16 = __half2float(c_fp16[i]);
        float val_fp32 = c_fp32[i];
        
        double absDiff = std::abs(val_fp16 - val_fp32);
        double relDiff = val_fp32 != 0.0f ? absDiff / std::abs(val_fp32) : 0.0;
        
        maxAbsDiff = std::max(maxAbsDiff, absDiff);
        avgAbsDiff += absDiff;
        maxRelDiff = std::max(maxRelDiff, relDiff);
    }
    
    avgAbsDiff /= (M * N);
    
    std::cout << "\n📊 Precision Analysis:" << std::endl;
    std::cout << "   Max Absolute Difference: " << maxAbsDiff << std::endl;
    std::cout << "   Avg Absolute Difference: " << avgAbsDiff << std::endl;
    std::cout << "   Max Relative Difference: " << maxRelDiff * 100 << "%" << std::endl;
    
    // Analyze the precision loss
    if (maxRelDiff > 0.01) {  // 1% threshold
        std::cout << "⚠️  Significant precision loss detected with FP16 accumulation" << std::endl;
    } else if (maxRelDiff > 0.001) {  // 0.1% threshold
        std::cout << "⚠️  Moderate precision loss detected with FP16 accumulation" << std::endl;
    } else {
        std::cout << "✅ Minimal precision loss with FP16 accumulation" << std::endl;
    }
}

int main() {
    std::cout << "=== Tensor Core FP16 Accumulation Test ===" << std::endl;
    
    // Check GPU capabilities
    if (!checkTensorCoreFP16Support()) {
        std::cout << "\n❌ This GPU does not support FP16 accumulation in Tensor Cores." << std::endl;
        std::cout << "   FP16 accumulation requires Ampere architecture or newer (Compute Capability >= 8.0)" << std::endl;
        return 1;
    }
    
    // Matrix dimensions (must be multiples of 16 for WMMA)
    const int M = 64, N = 64, K = 64;
    
    std::cout << "\n🔬 Testing matrix multiplication: " << M << "x" << K << " * " << K << "x" << N << std::endl;
    
    // Host matrices
    std::vector<half> h_a(M * K);
    std::vector<half> h_b(K * N);
    std::vector<half> h_c_fp16(M * N);
    std::vector<float> h_c_fp32(M * N);
    
    // Initialize matrices
    srand(42);  // For reproducible results
    initializeMatrices(h_a, h_b, M, N, K);
    
    // Device matrices
    half *d_a, *d_b, *d_c_fp16;
    float *d_c_fp32;
    
    cudaMalloc(&d_a, M * K * sizeof(half));
    cudaMalloc(&d_b, K * N * sizeof(half));
    cudaMalloc(&d_c_fp16, M * N * sizeof(half));
    cudaMalloc(&d_c_fp32, M * N * sizeof(float));
    
    // Copy to device
    cudaMemcpy(d_a, h_a.data(), M * K * sizeof(half), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, h_b.data(), K * N * sizeof(half), cudaMemcpyHostToDevice);
    
    // Launch kernel
    dim3 blockDim(32, 32);
    dim3 gridDim((M + 15) / 16, (N + 15) / 16);
    
    std::cout << "🚀 Launching Tensor Core computation..." << std::endl;
    
    tensorcore_fp16_accumulation_test<<<gridDim, blockDim>>>(
        d_a, d_b, d_c_fp16, d_c_fp32, M, N, K);
    
    cudaError_t err = cudaGetLastError();
    if (err != cudaSuccess) {
        std::cerr << "CUDA Error: " << cudaGetErrorString(err) << std::endl;
        return 1;
    }
    
    cudaDeviceSynchronize();
    
    // Copy results back
    cudaMemcpy(h_c_fp16.data(), d_c_fp16, M * N * sizeof(half), cudaMemcpyDeviceToHost);
    cudaMemcpy(h_c_fp32.data(), d_c_fp32, M * N * sizeof(float), cudaMemcpyDeviceToHost);
    
    // Compare results
    compareResults(h_c_fp16, h_c_fp32, M, N);
    
    std::cout << "\n✅ Test completed successfully!" << std::endl;
    std::cout << "   Both FP16 and FP32 accumulation modes executed on Tensor Cores." << std::endl;
    
    // Cleanup
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c_fp16);
    cudaFree(d_c_fp32);
    
    return 0;
}