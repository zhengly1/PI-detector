#include <cmath>
#include <cstddef>
#include <iostream>
#include <functional>

// 包含所有需要的 GSL 模块头文件
#include <gsl/gsl_sf.h>、 
#include <gsl/gsl_sf_airy.h>
#include <gsl/gsl_sf_bessel.h>
#include <gsl/gsl_sf_clausen.h>
#include <gsl/gsl_sf_coulomb.h>
#include <gsl/gsl_sf_coupling.h>
#include <gsl/gsl_sf_dawson.h>
#include <gsl/gsl_sf_debye.h>
#include <gsl/gsl_sf_dilog.h>
#include <gsl/gsl_sf_elementary.h>
#include <gsl/gsl_sf_ellint.h>
#include <gsl/gsl_sf_elljac.h>
#include <gsl/gsl_sf_erf.h>
#include <gsl/gsl_sf_exp.h>
#include <gsl/gsl_sf_expint.h>
#include <gsl/gsl_sf_fermi_dirac.h>
#include <gsl/gsl_sf_gamma.h>
#include <gsl/gsl_sf_gegenbauer.h>
#include <gsl/gsl_sf_hermite.h>
#include <gsl/gsl_sf_hyperg.h>
#include <gsl/gsl_sf_laguerre.h>
#include <gsl/gsl_sf_lambert.h>
#include <gsl/gsl_sf_legendre.h>
#include <gsl/gsl_sf_log.h>
#include <gsl/gsl_sf_mathieu.h>
#include <gsl/gsl_sf_pow_int.h>
#include <gsl/gsl_sf_psi.h>
#include <gsl/gsl_sf_synchrotron.h>
#include <gsl/gsl_sf_transport.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_zeta.h>
#include <gsl/gsl_cdf.h>

// 宏1: 用于包装返回 gsl_sf_result 的函数
#define GSL_WRAPPER(func_name) \
    __attribute__((noinline)) \
    double func_name##_wrapper(double x) { \
        gsl_sf_result result; \
        func_name(x, &result); \
        return result.val; \
    }

// 宏2: 用于包装直接返回 double 的函数
#define GSL_DIRECT_WRAPPER(func_name) \
    __attribute__((noinline)) \
    double func_name##_wrapper(double x) { \
        return func_name(x); \
    }


// 为 s4, s5, s6 定义一个全局的 epsilon
const double epsilon = 1e-6;

// ==============================================================================
// Part (a): 17 个涉及 GSL/ALGLIB 库调用的函数
// ==============================================================================

// 1. exp_bI1: (exp(bessel_I1(x)) - 1) / x
GSL_WRAPPER(gsl_sf_bessel_I1_e)
GSL_WRAPPER(gsl_sf_exp_e)
__attribute__((noinline))
int func_f1(double x, gsl_sf_result* result) {
    result->val = (std::exp(gsl_sf_bessel_I1_e_wrapper(x)) - 1.0) / x;
    return GSL_SUCCESS;
}

// 2. bj_sin: (1 - bessel_J0(x)) / sin(x)
GSL_WRAPPER(gsl_sf_bessel_J0_e)
GSL_WRAPPER(gsl_sf_sin_e)
__attribute__((noinline))
int func_f2(double x, gsl_sf_result* result) {
    result->val = (1.0 - gsl_sf_bessel_J0_e_wrapper(x)) / gsl_sf_sin_e_wrapper(x);
    return GSL_SUCCESS;
}

// 3. di_tan: 1 / dilog(x) - 1 / tan(x)
GSL_WRAPPER(gsl_sf_dilog_e)
__attribute__((noinline))
int func_f3(double x, gsl_sf_result* result) {
    result->val = (1.0 / gsl_sf_dilog_e_wrapper(x)) - (1.0 / std::tan(x));
    return GSL_SUCCESS;
}

// 4. log_erf: log(1 - erf(x)) / log(1 + x)
GSL_WRAPPER(gsl_sf_erf_e)
GSL_WRAPPER(gsl_sf_log_e)
GSL_WRAPPER(gsl_sf_log_1plusx_e)
__attribute__((noinline))
int func_f4(double x, gsl_sf_result* result) {
    result->val = gsl_sf_log_e_wrapper(1.0 - gsl_sf_erf_e_wrapper(x)) / gsl_sf_log_1plusx_e_wrapper(x);
    return GSL_SUCCESS;
}

// 5. acos_fd: acos(x)^2 - 3*fermi_dirac_1(x)
GSL_WRAPPER(gsl_sf_fermi_dirac_1_e)
__attribute__((noinline))
int func_f5(double x, gsl_sf_result* result) {
    double acos_val = std::acos(x);
    result->val = acos_val * acos_val - 3.0 * gsl_sf_fermi_dirac_1_e_wrapper(x);
    return GSL_SUCCESS;
}

// 6. ei: sin(erf_inv(x)) / (cos(x) - exp(x))
GSL_DIRECT_WRAPPER(gsl_cdf_ugaussian_Pinv)
GSL_WRAPPER(gsl_sf_cos_e)
__attribute__((noinline))
int func_f6(double x, gsl_sf_result* result) {
    double erf_inv_val = gsl_cdf_ugaussian_Pinv_wrapper( (x + 1.0) / 2.0 ) / std::sqrt(2.0);
    result->val = gsl_sf_sin_e_wrapper(erf_inv_val) / (gsl_sf_cos_e_wrapper(x) - gsl_sf_exp_e_wrapper(x));
    return GSL_SUCCESS;
}

// 7. Q1_W: (1 + legendre_Q1(x)) / lambert_W0(x)^2
GSL_WRAPPER(gsl_sf_legendre_Q1_e)
GSL_WRAPPER(gsl_sf_lambert_W0_e)
__attribute__((noinline))
int func_f7(double x, gsl_sf_result* result) {
    double w_val = gsl_sf_lambert_W0_e_wrapper(x);
    result->val = (1.0 + gsl_sf_legendre_Q1_e_wrapper(x)) / (w_val * w_val);
    return GSL_SUCCESS;
}

// 8. bj_tan: (1 - bessel_j0(x)) / (x * tan(x))
GSL_DIRECT_WRAPPER(gsl_sf_bessel_j0)
__attribute__((noinline))
int func_f8(double x, gsl_sf_result* result) {
    result->val = (1.0 - gsl_sf_bessel_j0_wrapper(x)) / (x * std::tan(x));
    return GSL_SUCCESS;
}

// 9. Si_tan: (Si(x) - tan(x)) / x^3
GSL_WRAPPER(gsl_sf_Si_e)
__attribute__((noinline))
int func_f9(double x, gsl_sf_result* result) {
    result->val = (gsl_sf_Si_e_wrapper(x) - std::tan(x)) / (x * x * x);
    return GSL_SUCCESS;
}

// 10. by_psi: bessel_y0(x)^2 - psi_1(x)
GSL_WRAPPER(gsl_sf_bessel_y0_e)
GSL_WRAPPER(gsl_sf_psi_1_e)
__attribute__((noinline))
int func_f10(double x, gsl_sf_result* result) {
    double y0_val = (x >= 0) ? gsl_sf_bessel_y0(x) : -gsl_sf_bessel_y0(-x);
    result->val = y0_val * y0_val - gsl_sf_psi_1_e_wrapper(x);
    return GSL_SUCCESS;
}

// 11. fdm_log: (2*fermi_dirac_m1(x) - 1) / log(1 + x)
GSL_WRAPPER(gsl_sf_fermi_dirac_m1_e)
__attribute__((noinline))
int func_f11(double x, gsl_sf_result* result) {
    result->val = (2.0 * gsl_sf_fermi_dirac_m1_e_wrapper(x) - 1.0) / gsl_sf_log_1plusx_e_wrapper(x);
    return GSL_SUCCESS;
}

// 12. eQ_sqrt: (2*erf_Q(x) - sqrt(1 + x))/x
GSL_WRAPPER(gsl_sf_erf_Q_e)
__attribute__((noinline))
int func_f12(double x, gsl_sf_result* result) {
    result->val = (2.0 * gsl_sf_erf_Q_e_wrapper(x) - std::sqrt(1.0 + x))/x;
    return GSL_SUCCESS;
}

// 13. W_var: (lambert_W0(x) - 1) / (lambert_W0(x)^2 - 1)
__attribute__((noinline))
int func_f13(double x, gsl_sf_result* result) {
    double w = gsl_sf_lambert_W0_e_wrapper(x);
    result->val = (w - 1.0) / (w * w - 1.0);
    return GSL_SUCCESS;
}

// 14. W_log: (lambert_W0(x) - 1) / (lambert_W0(x) * log(x) - 1)
__attribute__((noinline))
int func_f14(double x, gsl_sf_result* result) {
    double w = gsl_sf_lambert_W0_e_wrapper(x);
    result->val = (w - 1.0) / (w * gsl_sf_log_e_wrapper(x) - 1.0);
    return GSL_SUCCESS;
}

// 15. pow_df: (1 + dawson(x))^(1/x)
GSL_WRAPPER(gsl_sf_dawson_e)
__attribute__((noinline))
int func_f15(double x, gsl_sf_result* result) {
    double base = 1.0 + gsl_sf_dawson_e_wrapper(x);
    double exponent = 1.0 / x;
    result->val = std::pow(base, exponent);
    return GSL_SUCCESS;
}

// 16. chi_ci: (Chi(x) - Ci(x)) / x^2
GSL_WRAPPER(gsl_sf_Chi_e)
GSL_WRAPPER(gsl_sf_Ci_e)
__attribute__((noinline))
int func_f16(double x, gsl_sf_result* result) {
    result->val = (gsl_sf_Chi_e_wrapper(x) - gsl_sf_Ci_e_wrapper(x)) / (x * x);
    return GSL_SUCCESS;
}

// 17. fc_bj: 1/fresnel_C(x) + bessel_j1(x) - sin(x)/x^2
//GSL_WRAPPER(gsl_sf_fresnel_C_e)
//GSL_DIRECT_WRAPPER(gsl_sf_bessel_j1)
//__attribute__((noinline))
//int func_f17(double x, gsl_sf_result* result) {
    //result->val = (1.0 / gsl_sf_fresnel_C_e_wrapper(x)) + gsl_sf_bessel_j1_wrapper(x) - (gsl_sf_sin_e_wrapper(x) /(x * x));
    //return GSL_SUCCESS;
//}

// ==============================================================================
// Part (b): 15 个来自相关工作的函数
// ==============================================================================


// s1. cos_x2: (1 - cos(x)) / x^2
__attribute__((noinline))
int func_s1(double x, gsl_sf_result* result) {
    result->val = (1.0 - gsl_sf_cos_e_wrapper(x)) / (x * x);
    return GSL_SUCCESS;
}

// s2. exp_x2: (exp(x) - 2 + exp(-x)) / x^2
__attribute__((noinline))
int func_s2(double x, gsl_sf_result* result) {
    result->val = (gsl_sf_exp_e_wrapper(x) - 2.0 + gsl_sf_exp_e_wrapper(-x)) / (x * x);
    return GSL_SUCCESS;
}

// s3. cos_sin: (1 - cos(x)) / sin(x)
__attribute__((noinline))
int func_s3(double x, gsl_sf_result* result) {
    result->val = (1.0 - gsl_sf_cos_e_wrapper(x)) / gsl_sf_sin_e_wrapper(x);
    return GSL_SUCCESS;
}

// s4. sin_sin: sin(x + epsilon) - sin(x)
__attribute__((noinline))
int func_s4(double x, gsl_sf_result* result) {
    result->val = gsl_sf_sin_e_wrapper(x + epsilon) - gsl_sf_sin_e_wrapper(x);
    return GSL_SUCCESS;
}

// s5. tan_tan: tan(x + epsilon) - tan(x)
__attribute__((noinline))
int func_s5(double x, gsl_sf_result* result) {
    result->val = std::tan(x + epsilon) - std::tan(x);
    return GSL_SUCCESS;
}

// s6. cos_cos: cos(x + epsilon) - cos(x)
__attribute__((noinline))
int func_s6(double x, gsl_sf_result* result) {
    result->val = gsl_sf_cos_e_wrapper(x + epsilon) - gsl_sf_cos_e_wrapper(x);
    return GSL_SUCCESS;
}

// s7. exp_exp: exp(x) - exp(-x)
__attribute__((noinline))
int func_s7(double x, gsl_sf_result* result) {
    result->val = gsl_sf_exp_e_wrapper(x) - gsl_sf_exp_e_wrapper(-x);
    return GSL_SUCCESS;
}

// s8. exp_1: exp(x) - 1
__attribute__((noinline))
int func_s8(double x, gsl_sf_result* result) {
    result->val = gsl_sf_exp_e_wrapper(x)-1.0;
    return GSL_SUCCESS;
}

// s9. x_tan: 1/x - 1/tan(x)
__attribute__((noinline))
int func_s9(double x, gsl_sf_result* result) {
    result->val = (1.0 / x) - (1.0 / std::tan(x));
    return GSL_SUCCESS;
}

// s10. log_log: log(1 - x) / log(1 + x)
__attribute__((noinline))
int func_s10(double x, gsl_sf_result* result) {
    result->val = gsl_sf_log_e_wrapper(1.0 - x) / gsl_sf_log_e_wrapper(1.0 + x);
    return GSL_SUCCESS;
}

// s11. log_x: log((1 - x) / (1 + x))
__attribute__((noinline))
int func_s11(double x, gsl_sf_result* result) {
    result->val = gsl_sf_log_e_wrapper((1.0 - x) / (1.0 + x));
    return GSL_SUCCESS;
}

// s12. sqrt_exp: sqrt((exp(2x) - 1) / (exp(x) - 1))
__attribute__((noinline))
int func_s12(double x, gsl_sf_result* result) {
    result->val = std::sqrt((gsl_sf_exp_e_wrapper(2.0 * x)-1.0) / (gsl_sf_exp_e_wrapper(x)-1.0));
    return GSL_SUCCESS;
}

// s13. sin_tan: (x - sin(x)) / (x - tan(x))
__attribute__((noinline))
int func_s13(double x, gsl_sf_result* result) {
    result->val = (x - gsl_sf_sin_e_wrapper(x)) / (x - std::tan(x));
    return GSL_SUCCESS;
}

// s14. exp_x: (exp(x) - 1) / x
__attribute__((noinline))
int func_s14(double x, gsl_sf_result* result) {
    result->val = (gsl_sf_exp_e_wrapper(x)-1.0) / x;
    return GSL_SUCCESS;
}

// s15. x_x2: (x - 1) / (x^2 - 1)
__attribute__((noinline))
int func_s15(double x, gsl_sf_result* result) {
    result->val = (x - 1.0) / (x * x - 1.0);
    return GSL_SUCCESS;
}

