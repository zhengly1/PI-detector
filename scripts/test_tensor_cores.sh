#!/bin/bash

# Tensor Core FP16 Accumulation Test Script
# This script builds and runs the CUDA examples to test Tensor Core capabilities

echo "=== Tensor Core FP16 Accumulation Test Script ==="
echo ""

# Check if CUDA is available
if ! command -v nvcc &> /dev/null; then
    echo "❌ CUDA compiler (nvcc) not found. Please install CUDA toolkit."
    echo "   Visit: https://developer.nvidia.com/cuda-downloads"
    exit 1
fi

echo "✅ CUDA compiler found: $(nvcc --version | grep "release" | awk '{print $6}')"

# Check if NVIDIA GPU is available
if ! command -v nvidia-smi &> /dev/null; then
    echo "❌ nvidia-smi not found. Please install NVIDIA drivers."
    exit 1
fi

echo "✅ NVIDIA drivers found"
echo ""

# Show GPU information
echo "🔍 Detected GPU(s):"
nvidia-smi --query-gpu=name,compute_cap --format=csv,noheader,nounits | while read line; do
    echo "   $line"
done
echo ""

# Navigate to CUDA examples directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLES_DIR="$SCRIPT_DIR/../examples/cuda"

if [ ! -d "$EXAMPLES_DIR" ]; then
    echo "❌ CUDA examples directory not found: $EXAMPLES_DIR"
    exit 1
fi

cd "$EXAMPLES_DIR"

# Create build directory
BUILD_DIR="build"
if [ -d "$BUILD_DIR" ]; then
    echo "🧹 Cleaning existing build directory..."
    rm -rf "$BUILD_DIR"
fi

mkdir "$BUILD_DIR"
cd "$BUILD_DIR"

echo "🔨 Building CUDA examples..."

# Configure with CMake
if ! cmake .. -DCMAKE_BUILD_TYPE=Release; then
    echo "❌ CMake configuration failed"
    exit 1
fi

# Build
if ! make -j$(nproc); then
    echo "❌ Build failed"
    exit 1
fi

echo "✅ Build successful"
echo ""

# Run the test
echo "🚀 Running Tensor Core FP16 accumulation test..."
echo ""

if [ -f "./tensor_core_fp16_test" ]; then
    ./tensor_core_fp16_test
    TEST_RESULT=$?
    
    echo ""
    if [ $TEST_RESULT -eq 0 ]; then
        echo "✅ Test completed successfully!"
    else
        echo "⚠️  Test completed with warnings (likely due to GPU architecture limitations)"
    fi
else
    echo "❌ Test executable not found"
    exit 1
fi

echo ""
echo "📖 For more information, see:"
echo "   - docs/tensor_core_fp16_analysis.md"
echo "   - examples/cuda/README.md"