#ifndef __CORE_FPINTERFACE_HH__
#define __CORE_FPINTERFACE_HH__

#include "communicator.hh"

#include <cmath>
#include <cstddef>
#include <iostream>
#include <functional>

#include <hsed.h> 
#include <gsl/gsl_sf.h>

#include <gsl/gsl_matrix.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_linalg.h>


int func_f1(double x, gsl_sf_result* result);
int func_f2(double x, gsl_sf_result* result);
int func_f3(double x, gsl_sf_result* result);
int func_f4(double x, gsl_sf_result* result);
int func_f5(double x, gsl_sf_result* result);
int func_f6(double x, gsl_sf_result* result);
int func_f7(double x, gsl_sf_result* result);
int func_f8(double x, gsl_sf_result* result);
int func_f9(double x, gsl_sf_result* result);
int func_f10(double x, gsl_sf_result* result);
int func_f11(double x, gsl_sf_result* result);
int func_f12(double x, gsl_sf_result* result);
int func_f13(double x, gsl_sf_result* result);
int func_f14(double x, gsl_sf_result* result);
int func_f15(double x, gsl_sf_result* result);
int func_f16(double x, gsl_sf_result* result);
//int func_f17(double x, gsl_sf_result* result);
// Part (b)
int func_s1(double x, gsl_sf_result* result);
int func_s2(double x, gsl_sf_result* result);
int func_s3(double x, gsl_sf_result* result);
int func_s4(double x, gsl_sf_result* result);
int func_s5(double x, gsl_sf_result* result);
int func_s6(double x, gsl_sf_result* result);
int func_s7(double x, gsl_sf_result* result);
int func_s8(double x, gsl_sf_result* result);
int func_s9(double x, gsl_sf_result* result);
int func_s10(double x, gsl_sf_result* result);
int func_s11(double x, gsl_sf_result* result);
int func_s12(double x, gsl_sf_result* result);
int func_s13(double x, gsl_sf_result* result);
int func_s14(double x, gsl_sf_result* result);
int func_s15(double x, gsl_sf_result* result);

// extern "C" double foo(double);
const std::vector<std::function<double(double)>> simpleFuncList = {
    // foo,
};

const std::vector<std::function<double(double)>> HSEDFuncList = {
    sqroot,
    sqrt_add,
    exp1x,
    exp1x_log,
    NMSEexample37,
    NMSEproblem336,
    NMSEexample39,
    NMSEproblem341,
    NMSEsection311,
    NMSEproblem345,
    NMSEproblem337,
    verhulst,
    predatorPrey,
    logexp,
    sine,
    carbonGas,
    NMSEproblem341, // duplicate
    NMSEexample38,
    NMSEproblem334,
    NMSEproblem333,
    NMSEproblem331,
    NMSEexample36,
    NMSEexample35,
    NMSEexample34,
    NMSEexample31,
    test05_nonlin1_r4,
    test05_nonlin1_test2,
    intro_example_mixed,
    sineOrder3,
    bsplines3,
    NMSEexample310,
    NMSEproblem343,
    foo,
    };

const std::vector<std::function<int(double, gsl_sf_result *)>> GSLFuncList = {
  func_f1,func_f2,func_f3,func_f4,func_f5,func_f6,func_f7,func_f8,func_f9,func_f10,func_f11,func_f12,func_f13,func_f14,func_f15,func_f16,
  func_s1,func_s2,func_s3,func_s4,func_s5,func_s6,func_s7,func_s8,func_s9,func_s10,func_s11,func_s12,func_s13,func_s14,func_s15};


class FloatingPointFunction {
public:
  virtual void call(double x) = 0;
  virtual double getResult() = 0;
  virtual double callAndGetResult(double x) = 0;
  virtual bool isSuccess() = 0;
  virtual double getNumericalDerivative(double x) { return 0.0; }
  auto getInstInfoList() { return comm.getInstInfoList(); }
  void backUpInstInfoList() {
    comm.backUpInstInfoList();
  }
  FloatingPointFunction() : comm(Communicator::getInstance()) {
    comm.initComm();
  }

  virtual ~FloatingPointFunction() {}

public:
  double in, out;
  int status;
  Communicator &comm;
};

class GSLFunction : public FloatingPointFunction {
public:
  GSLFunction(size_t index) {
    gsl_set_error_handler_off();

    if (index >= GSLFuncList.size()) {
      std::cout << "Invalid index in [GSLFunction]: " << index << '\n';
      GSLFuncRef = GSLFuncList[0];
      return;
    }
    GSLFuncRef = GSLFuncList[index];
    return;
  }

  void call(double x) {
    comm.clear();
    in = x;
    status = GSLFuncRef(in, &gslres);
    out = gslres.val;
  }

  double callAndGetResult(double x) {
    call(x);
    return out;
  }
  double getNumericalDerivative(double x) {
    bool prevPerturb = fpUtil::enablePertubation;
    fpUtil::enablePertubation = false;
    const double h = 1e-5;
    gsl_sf_result result1, result2;

    // 计算 func(x+h)
    int status1 = GSLFuncRef(x + h, &result1);
    if (status1 != GSL_SUCCESS) {
        return 0.0; // 或者返回 NaN
    }

    // 计算 func(x)
    int status2 = GSLFuncRef(x, &result2);
    if (status2 != GSL_SUCCESS) {
        return 0.0; // 或者返回 NaN
    }
    fpUtil::enablePertubation = prevPerturb; // 恢复扰动状态
    // 返回数值导数
    return (result1.val - result2.val) / h;
  }
  double getResult() { return out; }
  bool isSuccess() { return (status == GSL_SUCCESS); }

private:
  std::function<int(double, gsl_sf_result *)> GSLFuncRef;
  gsl_sf_result gslres;
};

class SimpleFunction : public FloatingPointFunction {
public:
  SimpleFunction(size_t index) {
    if (index >= simpleFuncList.size()) {
      std::cout << "Invalid index in [SimpleFunction]: " << index << '\n';
      funcRef = simpleFuncList[0];
      return;
    }
    funcRef = simpleFuncList[index];
  }
  void call(double x) {
    comm.clear();
    in = x;
    out = funcRef(x);
    if (std::isnan(out)) {
      status = -1;
    } else {
      status = 0;
    }
  }

  double callAndGetResult(double x) {
    call(x);
    return out;
  }

  double getNumericalDerivative(double x) override {
    bool prevPerturb = fpUtil::enablePertubation;
    fpUtil::enablePertubation = false;
    const double h = 1e-5;

    double func_x_plus_h = funcRef(x + h);
    double func_x = funcRef(x);
    fpUtil::enablePertubation = prevPerturb; // 恢复扰动状态
    if (std::isnan(func_x_plus_h) || std::isnan(func_x)) {
        return 0.0;
    }

    return (func_x_plus_h - func_x) / h;
  }

  double getResult() { return out; }
  bool isSuccess() { return (status == 0); }

private:
  std::function<double(double)> funcRef;
};

class HSEDFunction : public FloatingPointFunction {
public:
  HSEDFunction(size_t index) {
    if (index >= HSEDFuncList.size()) {
      std::cout << "Invalid index in [HSEDFunction]: " << index << '\n';
      funcRef = HSEDFuncList[0];
      return;
    }
    funcRef = HSEDFuncList[index];
  }
  void call(double x) {
    comm.clear();
    in = x;
    out = funcRef(x);
    if (std::isnan(out)) {
      status = -1;
    } else {
      status = 0;
    }
  }

  double callAndGetResult(double x) {
    call(x);
    return out;
  }

  double getNumericalDerivative(double x) override {
    bool prevPerturb = fpUtil::enablePertubation;
    fpUtil::enablePertubation = false;
    const double h = 1e-5;

    double func_x_plus_h = funcRef(x + h);
    double func_x = funcRef(x);
    fpUtil::enablePertubation = prevPerturb; // 恢复扰动状态
    if (std::isnan(func_x_plus_h) || std::isnan(func_x)) {
        return 0.0;
    }

    return (func_x_plus_h - func_x) / h;
  }

  double getResult() { return out; }
  bool isSuccess() { return (status == 0); }

private:
  std::function<double(double)> funcRef;
};


class MatrixFunction : public FloatingPointFunction {
public:
  MatrixFunction() {}


};

#endif
