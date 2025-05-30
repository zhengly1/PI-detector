
#include <stdio.h>
#include <math.h>
#include "hsed.h"

// double foo(double x) {
//     // x = 2.5
//     printf("Foo\n");
//     double y = 3.5000000000000004;
//     double z = y - 1.0;
//     double val = x - z;
//     return val;
// }
double foo(double x) {
    double val = cos(x) - 0.5;
    val = val + 10000000000.0;
    return val;
}

// Function 1: sqroot
double sqroot(double x) {
    return 1.0 + 0.5 * x - 0.125 * x * x + 0.0625 * x * x * x - 0.0390625 * x * x * x * x;
}

// Function 2: sqrt_add
double sqrt_add(double x) {
    if (x < 1.0) return NAN; // Domain error handling
    return 1.0 / (sqrt(x + 1.0) + sqrt(x));
}

// Function 3: exp1x
double exp1x(double x) {
    if (x == 0.0) return NAN; // Avoid division by zero
    return (exp(x) - 1.0) / x;
}

// Function 4: exp1x_log
double exp1x_log(double x) {
    return (exp(x) - 1.0) / log(exp(x));
}

// Function 5: NMSEexample37
double NMSEexample37(double x) {
    return exp(x) - 1.0;
}

// Function 6: NMSEproblem336
double NMSEproblem336(double x) {
    if (x == 0.0) return NAN; // Avoid division by zero
    return log(x + 1.0) - log(x);
}

// Function 7: NMSEexample39
double NMSEexample39(double x) {
    if (x == 0.0) return NAN; // Avoid division by zero
    return 1.0 / x - 1.0 / tan(x);
}

// Function 8: NMSEproblem341
double NMSEproblem341(double x) {
    return (1.0 - cos(x)) / (x * x);
}

// Function 9: NMSEsection311
double NMSEsection311(double x) {
    return exp(x) / (exp(x) - 1.0);
}

// Function 10: NMSEproblem345
double NMSEproblem345(double x) {
    return (x - sin(x)) / (x - tan(x));
}

// Function 11: NMSEproblem337
double NMSEproblem337(double x) {
    return exp(x) - 2.0 + exp(-x);
}

// Function 12: verhulst
double verhulst(double x) {
    return (4.0 * x) / (x / 1.11 + 1.0);
}

// Function 13: predatorPrey
double predatorPrey(double x) {
    return (4.0 * x * x) / (1.0 + x / 1.11 + x / 1.11);
}

// Function 14: logexp
double logexp(double x) {
    return log(exp(x) - 1.0);
}

// Function 15: sine
double sine(double x) {
    return x - (x * x * x) / 6.0 + (x * x * x * x * x) / 120.0 - (x * x * x * x * x * x * x) / 5040.0;
}

// Function 16: carbonGas
double carbonGas(double x) {
    return ((35000000.0 + ((0.401 * (1000.0 / x)) * (1000.0 / x))) * (x - (1000.0 * 4.27e-5))) - ((1.3806503e-23 * 1000.0) * 300.0);
}

// Function 17: NMSEexample38
double NMSEexample38(double x) {
    return (((x + 1.0) * log(x + 1.0)) - (x * log(x))) - 1.0;
}

// Function 18: NMSEproblem334
double NMSEproblem334(double x) {
    return cbrt(x + 1.0) - cbrt(x);
}

// Function 19: NMSEproblem333
double NMSEproblem333(double x) {
    return ((1.0 / (x + 1.0)) - (2.0 / x)) + (1.0 / (x - 1.0));
}

// Function 20: NMSEproblem331
double NMSEproblem331(double x) {
    return 1.0 / (x + 1.0) - (1.0 / x);
}

// Function 21: NMSEexample36
double NMSEexample36(double x) {
    return 1.0 / sqrt(x) - 1.0 / sqrt(x + 1.0);
}

// Function 22: NMSEexample35
double NMSEexample35(double x) {
    return 1.0 / tan(x + 1.0) - 1.0 / tan(x);
}

// Function 23: NMSEexample34
double NMSEexample34(double x) {
    return (1.0 - cos(x)) / sin(x);
}

// Function 24: NMSEexample31
double NMSEexample31(double x) {
    return sqrt(x + 1.0) - sqrt(x);
}

// Function 25: test05_nonlin1_r4
double test05_nonlin1_r4(double x) {
    return (x - 1.0) / (x * x - 1.0);
}

// Function 26: test05_nonlin1_test2
double test05_nonlin1_test2(double x) {
    return 1.0 / (x + 1.0);
}

// Function 27: intro_example_mixed
double intro_example_mixed(double x) {
    return x / (x + 1.0);
}

// Function 28: sineOrder3
double sineOrder3(double x) {
    return (0.954929658551372 * x) - (0.12900613773279798 * (x * x * x));
}

// Function 29: bsplines3
double bsplines3(double x) {
    return (-x * x * x) / 6.0;
}

// Function 30: NMSEexample310
double NMSEexample310(double x) {
    return log(1.0 - x) / log(1.0 + x);
}

// Function 31: NMSEproblem343
double NMSEproblem343(double x) {
    return log((1.0 - x) / (1.0 + x));
}