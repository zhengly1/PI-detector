cmake_minimum_required(VERSION 3.20)

# Enable CUDA language
enable_language(CUDA)

# Set CUDA standard
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)

# Find CUDA
find_package(CUDA REQUIRED)

# Check for Tensor Core support (requires compute capability 7.0+)
set(CMAKE_CUDA_ARCHITECTURES "70;75;80;86;89;90")

# Create the Tensor Core FP16 test executable
add_executable(tensor_core_fp16_test tensor_core_fp16_test.cu)

# Set CUDA properties
set_target_properties(tensor_core_fp16_test PROPERTIES
    CUDA_RUNTIME_LIBRARY Shared
    CUDA_RESOLVE_DEVICE_SYMBOLS ON
)

# Link CUDA libraries
target_link_libraries(tensor_core_fp16_test 
    ${CUDA_LIBRARIES}
    ${CUDA_CUBLAS_LIBRARIES}
)

# Add compile definitions for different architectures
target_compile_definitions(tensor_core_fp16_test PRIVATE
    $<$<COMPILE_LANGUAGE:CUDA>:__CUDA_NO_HALF_OPERATORS__>
    $<$<COMPILE_LANGUAGE:CUDA>:__CUDA_NO_HALF_CONVERSIONS__>
)

# Set CUDA compiler flags
target_compile_options(tensor_core_fp16_test PRIVATE
    $<$<COMPILE_LANGUAGE:CUDA>:
        --use_fast_math
        --restrict
        -Xcompiler -Wall
    >
)

# Optional: Create a target to check GPU capabilities
add_custom_target(check_gpu_capabilities
    COMMAND ${CMAKE_CURRENT_BINARY_DIR}/tensor_core_fp16_test
    DEPENDS tensor_core_fp16_test
    COMMENT "Running Tensor Core FP16 accumulation test"
)

# Print information about supported architectures
message(STATUS "Building for CUDA architectures: ${CMAKE_CUDA_ARCHITECTURES}")
message(STATUS "Tensor Core FP16 accumulation test will be built")
message(STATUS "Requirements:")
message(STATUS "  - CUDA compute capability 7.0+ for Tensor Cores")
message(STATUS "  - CUDA compute capability 8.0+ for FP16 accumulation")