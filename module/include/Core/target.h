// targetExample.c
#include <cmath>
#include <cmath>
#include <cstddef>
#include <iostream>
#include <functional>
#include <gsl/gsl_sf.h>
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_linalg.h>

extern "C" int func_f1(double x, gsl_sf_result* result);
extern "C" int func_f2(double x, gsl_sf_result* result);
extern "C" int func_f3(double x, gsl_sf_result* result);
extern "C" int func_f4(double x, gsl_sf_result* result);
extern "C" int func_f5(double x, gsl_sf_result* result);
extern "C" int func_f6(double x, gsl_sf_result* result);
extern "C" int func_f7(double x, gsl_sf_result* result);
extern "C" int func_f8(double x, gsl_sf_result* result);
extern "C" int func_f9(double x, gsl_sf_result* result);
extern "C" int func_f10(double x, gsl_sf_result* result);
extern "C" int func_f11(double x, gsl_sf_result* result);
extern "C" int func_f12(double x, gsl_sf_result* result);
extern "C" int func_f13(double x, gsl_sf_result* result);
extern "C" int func_f14(double x, gsl_sf_result* result);
extern "C" int func_f15(double x, gsl_sf_result* result);
extern "C" int func_f16(double x, gsl_sf_result* result);
//int func_f17(double x, gsl_sf_result* result);
// Part (b)
extern "C" int func_s1(double x, gsl_sf_result* result);
extern "C" int func_s2(double x, gsl_sf_result* result);
extern "C" int func_s3(double x, gsl_sf_result* result);
extern "C" int func_s4(double x, gsl_sf_result* result);
extern "C" int func_s5(double x, gsl_sf_result* result);
extern "C" int func_s6(double x, gsl_sf_result* result);
extern "C" int func_s7(double x, gsl_sf_result* result);
extern "C" int func_s8(double x, gsl_sf_result* result);
extern "C" int func_s9(double x, gsl_sf_result* result);
extern "C" int func_s10(double x, gsl_sf_result* result);
extern "C" int func_s11(double x, gsl_sf_result* result);
extern "C" int func_s12(double x, gsl_sf_result* result);
extern "C" int func_s13(double x, gsl_sf_result* result);
extern "C" int func_s14(double x, gsl_sf_result* result);
extern "C" int func_s15(double x, gsl_sf_result* result);

// Numerical differentiation utility function
extern "C" double numerical_derivative(int (*func)(double, gsl_sf_result*), double x);

