# PI-Detector

Floating-point programs form the foundation of modern science and engineering, providing the essential computational framework for a wide range of applications, including safety-critical systems, aerospace engineering, and financial analysis. Floating-point errors can lead to severe consequences. Although floating-point errors widely exist, only a subset of inputs may trigger significant errors in floating-point programs. Therefore, it is crucial to determine whether a given input could produce such errors.  Researchers tend to take the results of high-precision floating-point programs as oracles for detecting floating-point errors, which introduces two main limitations: (1) difficulty of implementation and (2) prolonged execution time. The two recent tools, ATOMU and FPCC, can partially address these issues. However, ATOMU suffers from false positives; while FPCC, though eliminating false positives, operates at a considerably slower speed.

To address these two challenges, we propose a novel approach named PI-detector to computing floating-point errors effectively and efficiently. Our approach is based on the observation that floating-point errors stem from large condition numbers in atomic operations (such as addition and subtraction), which then propagate and accumulate. PI-detector injects small perturbations into the operands of individual atomic operations within the program and compares the outcomes of the original program with the perturbed version to detect large floating-point errors. We evaluate PI-detector with datasets from ATOMU and HSED, as well as a complex linear system-solving program. Experimental results demonstrate that PI-detector can perform efficient and accurate floating-point error computation.  

## Dependences

| Library | Version                                |
| ------- | -------------------------------------- |
| LLVM    | 18.1.3                                 |
| Clang   | Ubuntu clang version 18.1.3 (1ubuntu1) |

For more information, see https://apt.llvm.org/.

## Option
```
Usage: detector [--help] [--version] [--relerr] lib mode input output

Positional arguments:
  lib            Specify the library to use (gsl/hsed/matrix) [required]
  mode           Specify the mode (input/matrix) [required]
  input          Specify the input file path [required]
  output         Specify the output file path [required]

Optional arguments:
  -h, --help     shows help message and exits 
  -v, --version  prints version information and exits 
  --relerr       Calculate relative error instead of ulp error 
```

## Usage
### **For the details about result reproduction, see [result_reproduction](script/result_reproduction.ipynb).**

## Additional Documentation

### Tensor Core FP16 Accumulation Analysis
This repository includes research and analysis on NVIDIA Tensor Core FP16 accumulation capabilities:

- **[Tensor Core FP16 Analysis](docs/tensor_core_fp16_analysis.md)** - Comprehensive analysis answering the question "Do Tensor Cores support FP16 accumulation?"
- **[CUDA Examples](examples/cuda/)** - Practical CUDA code demonstrating Tensor Core FP16 vs FP32 accumulation

### Key Findings

**Question**: Tensor Cores是不是不支持fp16累加？ (Do Tensor Cores not support fp16 accumulation?)

**Answer**: The support for FP16 accumulation in Tensor Cores **depends on the GPU architecture**:

- ❌ **Early architectures do NOT support**: Volta (V100) and Turing (RTX 20xx) - FP32 accumulation only
- ✅ **Modern architectures DO support**: Ampere (A100, RTX 30xx) and newer - Both FP16 and FP32 accumulation

Therefore, the statement "Tensor Cores do not support FP16 accumulation" is **inaccurate** - it depends on the specific hardware generation.
