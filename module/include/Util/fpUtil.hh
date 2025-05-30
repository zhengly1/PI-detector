#ifndef __UTIL_FPUTIL_H__
#define __UTIL_FPUTIL_H__

#include "opcode.hh"
#include <cassert>
#include <cfloat>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <limits>
#include <string>
#include <unordered_map>

namespace fpUtil {

const double PI = 3.14159265358979;
const double PI_2 = 1.57079632679490;

extern bool enablePertubation;
extern int loopCycle;
extern int perturbCount;
extern double condNumThreshold;

extern std::unordered_map<int, std::string> op_map;

template <typename FloatType> struct FloatTraits;

template <> struct FloatTraits<float> {
  using BitsType = uint32_t;
  static constexpr BitsType SignMask = 0x80000000u;
  static constexpr BitsType ExpoMask = 0x7F800000u;
  static constexpr BitsType FracMask = 0x007FFFFFu;
  static constexpr BitsType PosInf = 0x7F800000u;
  static constexpr BitsType NegInf = 0xFF800000u;
  static constexpr BitsType NaN = 0x7FFFFFFFu;
};

template <> struct FloatTraits<double> {
  using BitsType = uint64_t;
  static constexpr BitsType SignMask = 0x8000000000000000ULL;
  static constexpr BitsType ExpoMask = 0x7FF0000000000000ULL;
  static constexpr BitsType FracMask = 0x000FFFFFFFFFFFFFULL;
  static constexpr BitsType PosInf = 0x7FF0000000000000ULL;
  static constexpr BitsType NegInf = 0xFFF0000000000000ULL;
  static constexpr BitsType NaN = 0x7FFFFFFFFFFFFFFFULL;
};

template <typename FloatType>
typename FloatTraits<FloatType>::BitsType floatToBits(FloatType f) {
  typename FloatTraits<FloatType>::BitsType bits;
  static_assert(sizeof(FloatType) == sizeof(bits), "Size mismatch");
  std::memcpy(&bits, &f, sizeof(bits));
  return bits;
}

template <typename FloatType>
FloatType bitsToFloat(typename FloatTraits<FloatType>::BitsType bits) {
  FloatType f;
  static_assert(sizeof(FloatType) == sizeof(bits), "Size mismatch");
  std::memcpy(&f, &bits, sizeof(f));
  return f;
}

template <typename FloatType> FloatType floatULP(FloatType x) {
  using BitsType = typename FloatTraits<FloatType>::BitsType;
  BitsType bits = floatToBits<FloatType>(x);
  bits = bits &
         (FloatTraits<FloatType>::ExpoMask | FloatTraits<FloatType>::FracMask);
  FloatType y = bitsToFloat<FloatType>(bits);
  BitsType bits_plus = bits + 1;
  FloatType y_plus = bitsToFloat<FloatType>(bits_plus);
  return y_plus - y;
}

template <typename FloatType>
typename FloatTraits<FloatType>::BitsType floatDist(FloatType f1,
                                                    FloatType f2) {
  using BitsType = typename FloatTraits<FloatType>::BitsType;
  BitsType bits1 = floatToBits(f1) & (FloatTraits<FloatType>::ExpoMask |
                                      FloatTraits<FloatType>::FracMask);
  BitsType bits2 = floatToBits(f2) & (FloatTraits<FloatType>::ExpoMask |
                                      FloatTraits<FloatType>::FracMask);

  BitsType dist;
  if ((f1 > 0 && f2 < 0) || (f1 < 0 && f2 > 0)) {
    dist = bits1 + bits2;
  } else {
    dist = (bits1 > bits2) ? (bits1 - bits2) : (bits2 - bits1);
  }
  return dist;
}

template <typename FloatType>
bool isCloseToInteger(
    FloatType x
    // FloatType epsilon = std::numeric_limits<FloatType>::epsilon()
) {
  if (!std::isfinite(x)) {
    return false;
  }
  FloatType nearestInteger = std::round(x);
  // FloatType difference = std::abs(x - nearestInteger);
  // return difference < epsilon;
  return floatDist(x, nearestInteger) == 0;
}

template <typename FloatType>
FloatType floatRelativeError(FloatType f1, FloatType f2) {
  // Handle the case where both f1 and f2 are infinite
  if (std::isinf(f1) && std::isinf(f2)) {
    // If both are infinite, the relative error is 0
    return static_cast<FloatType>(0);
  }

  // If f1 or f2 is infinite, treat the relative error as infinity
  if (std::isinf(f1) || std::isinf(f2)) {
    return std::numeric_limits<FloatType>::infinity();
  }

  FloatType delta = std::abs(f2 - f1);
  if (delta == 0) {
    return static_cast<FloatType>(0);
  }
  try {
    if (f1 != 0) {
      return std::abs(delta / f1);
    } else {
      if (f2 != 0) {
        return std::abs(delta / f2);
      } else {
        return static_cast<FloatType>(0);
      }
    }
  } catch (...) {
    return std::numeric_limits<FloatType>::infinity();
  }
}

// ConditionNumber
inline double rawCondition(uint64_t opcode, double lhs, double rhs) {

  double cond1, cond2, dzdist;
  switch (opcode) {
  case OP_ADD:
    // dzdist = fabs(lhs + rhs);
    // cond1 = fabs(lhs) / dzdist;
    // cond2 = fabs(rhs) / dzdist;
    // return cond1 + cond2;
    dzdist = lhs + rhs;
    cond1 = fabs(lhs / dzdist);
    return cond1;
  case OP_SUB:
    // dzdist = fabs(lhs - rhs);
    // cond1 = fabs(lhs) / dzdist;
    // cond2 = fabs(rhs) / dzdist;
    // return cond1 + cond2;
    dzdist = lhs - rhs;
    cond1 = fabs(lhs / dzdist);
    return cond1;
  case OP_SIN:
    cond1 = fabs(lhs / tan(lhs));
    return cond1;
  case OP_COS:
    cond1 = fabs(lhs * tan(lhs));
    return cond1;
  case OP_TAN:
    cond1 = fabs(lhs / (sin(lhs) * cos(lhs)));
    return cond1;
  case OP_ASIN:
    cond1 = fabs(lhs / (sqrt(1 - lhs * lhs) * asin(lhs)));
    return cond1;
  case OP_ACOS:
    cond1 = fabs(lhs / (sqrt(1 - lhs * lhs) * acos(lhs)));
    return cond1;
  case OP_SINH:
    cond1 = fabs(lhs / tanh(lhs));
    return cond1;
  case OP_COSH:
    cond1 = fabs(lhs * tanh(lhs));
    return cond1;
  case OP_LOG:
    dzdist = fabs(lhs - 1);
    cond1 = fabs(1 / log(lhs));
    return cond1;
  case OP_LOG10:
    dzdist = fabs(lhs - 1);
    cond1 = fabs(1 / log(lhs));
    return cond1;
  case OP_POW:
    cond1 = fabs(rhs);
    cond2 = fabs(rhs * log(lhs));
    return cond1 + cond2;
  default:
    return 1;
  }
}

template <typename FloatType>
FloatType perturbValue(FloatType origin_res, int multiplier = 1);

} // namespace fpUtil

#endif
