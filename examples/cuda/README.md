# CUDA Tensor Core FP16 Accumulation Examples

This directory contains CUDA examples that demonstrate and test Tensor Core FP16 accumulation capabilities.

## Files

- `tensor_core_fp16_test.cu` - CUDA program that tests both FP16 and FP32 accumulation on Tensor Cores
- `CMakeLists.txt` - CMake build configuration for the CUDA examples

## Building the Examples

### Prerequisites

1. **NVIDIA GPU** with Tensor Core support (Compute Capability 7.0+)
   - For FP16 accumulation: Compute Capability 8.0+ (Ampere architecture or newer)
   - For FP32 accumulation: Compute Capability 7.0+ (Volta architecture or newer)

2. **CUDA Toolkit** (version 11.0+ recommended)

3. **CMake** (version 3.20+)

### Build Instructions

```bash
# From the repository root
cd examples/cuda

# Create build directory
mkdir build && cd build

# Configure with CMake
cmake ..

# Build the examples
make

# Run the test
./tensor_core_fp16_test
```

## Example Output

### On Ampere+ GPU (supports FP16 accumulation):
```
=== Tensor Core FP16 Accumulation Test ===
GPU: NVIDIA GeForce RTX 3080
Compute Capability: 8.6
✅ Tensor Cores supported
✅ FP16 accumulation supported

🔬 Testing matrix multiplication: 64x64 * 64x64
🚀 Launching Tensor Core computation...

📊 Precision Analysis:
   Max Absolute Difference: 0.000123
   Avg Absolute Difference: 0.000056
   Max Relative Difference: 0.82%

⚠️  Moderate precision loss detected with FP16 accumulation

✅ Test completed successfully!
   Both FP16 and FP32 accumulation modes executed on Tensor Cores.
```

### On Volta/Turing GPU (FP32 accumulation only):
```
=== Tensor Core FP16 Accumulation Test ===
GPU: Tesla V100-SXM2-16GB
Compute Capability: 7.0
✅ Tensor Cores supported
❌ FP16 accumulation NOT supported (only FP32 accumulation)
   GPU generation: Volta

❌ This GPU does not support FP16 accumulation in Tensor Cores.
   FP16 accumulation requires Ampere architecture or newer (Compute Capability >= 8.0)
```

## Code Explanation

The test program does the following:

1. **GPU Detection**: Checks the compute capability to determine Tensor Core and FP16 accumulation support
2. **Matrix Initialization**: Creates small random FP16 matrices to avoid overflow
3. **Dual Computation**: Performs the same matrix multiplication using both FP16 and FP32 accumulation
4. **Precision Analysis**: Compares the results to quantify the precision difference

### Key CUDA Code Snippets

#### FP16 Accumulation (Ampere+):
```cpp
wmma::fragment<wmma::accumulator, 16, 16, 16, half> c_frag_fp16;
wmma::mma_sync(c_frag_fp16, a_frag, b_frag, c_frag_fp16);
```

#### FP32 Accumulation (All Tensor Cores):
```cpp
wmma::fragment<wmma::accumulator, 16, 16, 16, float> c_frag_fp32;
wmma::mma_sync(c_frag_fp32, a_frag, b_frag, c_frag_fp32);
```

## Understanding the Results

### Precision Implications

- **FP16 accumulation** trades precision for performance and memory bandwidth
- Typical precision loss: 0.1% - 5% depending on the computation
- **Use cases**: Deep learning inference, performance-critical applications where slight precision loss is acceptable

### Performance Benefits of FP16 Accumulation

1. **Higher throughput**: 2x theoretical peak performance
2. **Memory efficiency**: 50% less memory for accumulation buffers
3. **Bandwidth optimization**: More data can be transferred in the same time

### When to Use Each Mode

- **FP32 accumulation**: Scientific computing, training, high-precision requirements
- **FP16 accumulation**: Inference, real-time applications, when precision loss is acceptable

## Troubleshooting

### Common Issues

1. **"CUDA Error: invalid device symbol"**
   - Ensure your GPU supports the required compute capability
   - Check that CUDA toolkit is properly installed

2. **Compilation errors about WMMA**
   - WMMA requires compute capability 7.0+
   - Ensure proper CUDA architecture flags are set

3. **Runtime errors about unsupported operations**
   - FP16 accumulation requires compute capability 8.0+
   - The program will detect this and provide appropriate error messages

### Hardware Requirements Summary

| Feature | Min Compute Capability | Architecture Examples |
|---------|----------------------|---------------------|
| Tensor Cores | 7.0 | V100, RTX 20xx series |
| FP16 Input/Output | 7.0 | V100, RTX 20xx series |
| FP16 Accumulation | 8.0 | A100, RTX 30xx/40xx series |

## Related Documentation

- [NVIDIA Tensor Core Programming Guide](https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#tensor-cores)
- [CUDA WMMA API Reference](https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#wmma)
- [Mixed Precision Training](https://docs.nvidia.com/deeplearning/performance/mixed-precision-training/)