# 数值微分功能使用指南 / Numerical Differentiation Usage Guide

## 概述 / Overview

PI-detector 现在支持在处理 `targetExample.cc` 中的函数时同时计算数值导数。数值导数使用公式：
`num_value = (func(x+1e-5)-func(x))/1e-5`

PI-detector now supports computing numerical derivatives while processing functions in `targetExample.cc`. The numerical derivative is computed using the formula:
`num_value = (func(x+1e-5)-func(x))/1e-5`

## 使用方法 / Usage

### 基本语法 / Basic Syntax

```bash
./detector <lib> input <input_file> <output_file> --derivatives
```

### 参数说明 / Parameters

- `<lib>`: 函数库类型 (gsl, hsed, example) / Function library type
- `<input_file>`: 输入JSON文件路径 / Input JSON file path  
- `<output_file>`: 输出JSON文件路径 / Output JSON file path
- `--derivatives`: 启用数值微分计算 / Enable numerical differentiation

### 示例 / Examples

1. **计算GSL函数的导数 / Compute derivatives for GSL functions:**
```bash
./detector gsl input input.json output.json --derivatives
```

2. **计算HSED函数的导数 / Compute derivatives for HSED functions:**
```bash
./detector hsed input input.json output.json --derivatives
```

3. **不计算导数（向后兼容）/ Without derivatives (backward compatible):**
```bash
./detector gsl input input.json output.json
```

## 输入格式 / Input Format

输入JSON文件格式保持不变：
Input JSON file format remains unchanged:

```json
{
  "0": {
    "inputs": [[1.0, 2.0, 3.0]]
  },
  "29": {
    "inputs": [[0.5, 1.0, 1.5]]
  }
}
```

## 输出格式 / Output Format

### 不带导数的输出 / Output without derivatives:
```json
{
  "0": {
    "inputs": [[1.0, 2.0, 3.0]],
    "results": [[0.759, 1.953, 17.037]],
    "errors": [[0, 2, 7]]
  }
}
```

### 带导数的输出 / Output with derivatives:
```json
{
  "0": {
    "inputs": [[1.0, 2.0, 3.0]],
    "results": [[0.759, 1.953, 17.037]],
    "derivatives": [[0.474, 2.665, 56.212]],
    "errors": [[0, 2, 7]]
  }
}
```

## 技术细节 / Technical Details

### 支持的函数类型 / Supported Function Types

1. **GSL函数 / GSL Functions**: 
   - 所有 `func_f*` 和 `func_s*` 函数
   - All `func_f*` and `func_s*` functions

2. **HSED函数 / HSED Functions**:
   - 所有HSED库中的函数
   - All functions in HSED library

3. **简单函数 / Simple Functions**:
   - 用户定义的简单数学函数
   - User-defined simple mathematical functions

### 数值微分算法 / Numerical Differentiation Algorithm

- **步长 / Step size**: h = 1e-5
- **方法 / Method**: 前向差分 / Forward difference
- **公式 / Formula**: f'(x) ≈ (f(x+h) - f(x)) / h

### 错误处理 / Error Handling

- 如果函数在 x 或 x+h 处计算失败，导数值设为 0.0
- If function evaluation fails at x or x+h, derivative is set to 0.0
- NaN 和无穷大值会被适当处理
- NaN and infinite values are properly handled

## 性能影响 / Performance Impact

启用数值微分会增加计算时间，因为每个输入点需要额外的函数评估。
Enabling numerical differentiation increases computation time as it requires additional function evaluations for each input point.

## 向后兼容性 / Backward Compatibility

该功能完全向后兼容。不使用 `--derivatives` 标志时，行为与之前完全相同。
This feature is fully backward compatible. Without the `--derivatives` flag, behavior is identical to before.