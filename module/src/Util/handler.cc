#include "communicator.hh"
#include "fpUtil.hh"
#include "opcode.hh"
#include <cmath>
#include <cstdint>
#include <cstdio>

template <typename FloatType>
FloatType fAddHandler(FloatType a, FloatType b) {
  if (!fpUtil::enablePertubation) {
    return a + b;
  }

  if ((a > 0 && b > 0) || (a < 0 && b < 0)) {
    return a + b;
  }

  if (fpUtil::rawCondition(OP_ADD, a, b) > fpUtil::condNumThreshold) {
    if (fabs(a) > fabs(b)) {
      if (b < 0) {
        b = fpUtil::perturbValue(b, -1);
      } else {
        b = fpUtil::perturbValue(b);
      }
    } else {
      if (a < 0) {
        a = fpUtil::perturbValue(a, -1);
      } else {
        a = fpUtil::perturbValue(a);
      }
    }
  }

  return a + b;
}

template <typename FloatType>
FloatType fSubHandler(FloatType a, FloatType b) {
  if (!fpUtil::enablePertubation) {
    double r = a - b;
    return r;
  }

  if ((a > 0 && b < 0) || (a > 0 && b < 0)) {
    return a - b;
  }

  if (fpUtil::rawCondition(OP_SUB, a, b) > fpUtil::condNumThreshold) {
    if (a > b) {
      b = fpUtil::perturbValue(b);
    } else {
      a = fpUtil::perturbValue(a);
    }
  }

  return a - b;
}

extern "C" {

double fAddHandlerDouble(double a, double b
                         ) {
  return fAddHandler(a, b);
}

float fAddHandlerFloat(float a, float b
                       ) {
  return fAddHandler(a, b);
}

double fSubHandlerDouble(double a, double b
                         ) {
  return fSubHandler(a, b);
}

float fSubHandlerFloat(float a, float b
                       ) {
  return fSubHandler(a, b);
}

// double fMulHandler(double a, double b) {
//   return a * b;
// }

// double fDivHandler(double a, double b) {
//   return a / b;
// }

double callHandler(int32_t functionID, double a, double b) {

  if (!fpUtil::enablePertubation) {

    if (unaryFuncMap.find(functionID) != unaryFuncMap.end()) {
      double r = unaryFuncMap.at(functionID)(a);
      return r;
    } else if (binaryFuncMap.find(functionID) != binaryFuncMap.end()) {
      double r = binaryFuncMap.at(functionID)(a, b);
      return r;
    }
  }

  if (functionID == OP_FMOD) {
    return fmod(fpUtil::perturbValue(a), b);
  }

  if (fpUtil::rawCondition(functionID, a, b) > fpUtil::condNumThreshold) {
    a = fpUtil::perturbValue(a);
  }
  return unaryFuncMap.at(functionID)(a);
}
}
 