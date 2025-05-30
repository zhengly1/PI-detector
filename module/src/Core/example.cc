#include <cmath>

double foo(double x) {
    // This function calculate the motivation example:
    // y = (1-cos(x))/(x^2)
    // See details at: https://www.wolframalpha.com/input/?i=(1-cos(x))%2F(x%5E2)

    // It triggers significant error when x->0, where y should be ->0.5.
    return ((1.0 / (x + 1.0)) - (2.0 / x)) + (1.0 / (x - 1.0));
}

