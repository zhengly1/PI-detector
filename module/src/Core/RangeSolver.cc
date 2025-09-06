#include "RangeSolver.hh"
#include "Common.hh"
#include "fpUtil.hh"
#include <cassert>
#include <chrono>
#include <cmath>

extern bool relativeError; // Flag for relative error calculation.

void RangeSolver::runOneFuncWithInputs(Ptr<FloatingPointFunction> &func,
                                       const FloatVec &inputs, bool computeDerivatives) {

  _init(func);

  startTime = std::chrono::steady_clock::now();

  _calculateResults(inputs, false);

  ckptTime = std::chrono::steady_clock::now();

  results = _calculateResults(inputs, false);
  resultsP = _calculateResults(inputs, true);
  if (computeDerivatives) {
    derivatives = _calculateDerivatives(inputs);
    // Calculate condition numbers using: x * derivative / |f(x)|
    conditionNumbers = _calculateConditionNumbers(inputs, results, derivatives);
  }
  if (relativeError) {
    relErrors = _calculateULPRelErrors(results, resultsP);
  } else {
    errors = _calculateULPErrors(results, resultsP);
  }
  
  // Calculate backward errors if we have condition numbers and errors
  if (computeDerivatives && !relativeError) {
    backwardErrors = _calculateBackwardErrors(errors, conditionNumbers);
  }

  finishTime = std::chrono::steady_clock::now();

  origDuration = ckptTime - startTime;
  elapsedDuration = finishTime - startTime;
  perturbDuration = finishTime - ckptTime;

  // return errors;
}

void RangeSolver::_init(Ptr<FloatingPointFunction> &func) {
  this->func = std::move(func); // ? is there any problem?
}

FloatVec RangeSolver::_extractInputs(const Range &range) {
  // Using std::lower_bound to find the first element >= range.first
  auto start =
      std::lower_bound(halfValues.begin(), halfValues.end(), range.first);

  // Also using std::lower_bound to find the first element > range.second, but
  // including equality
  auto end = std::lower_bound(halfValues.begin(), halfValues.end(),
                              range.second +
                                  std::numeric_limits<FloatType>::epsilon());

  FloatVec inputs = FloatVec(start, end);
  if (std::find(inputs.begin(), inputs.end(), range.first) == inputs.end()) {
    inputs.emplace(inputs.begin(), range.first);
  }
  if (std::find(inputs.begin(), inputs.end(), range.second) == inputs.end()) {
    inputs.emplace_back(range.second);
  }

  // Return the subvector from start to end
  return inputs;
}

FloatVec RangeSolver::_calculateResults(const FloatVec &inputs,
                                        bool enablePerturbation) {

  FloatVec results;
  results.reserve(inputs.size());

  fpUtil::enablePertubation = enablePerturbation;

  for (const auto &input : inputs) {
    double res;
    // if (enablePerturbation && !fpUtil::isCloseToInteger(input)) {
      // Perturb the input if enable and not close to int
      // res = func->callAndGetResult(input - 1 * fpUtil::floatULP(input));
      // res = func->callAndGetResult(input);
    // } else {
    //   res = func->callAndGetResult(input);
    // }
    // std::cout << input << std::endl;
    // res = func->callAndGetResult(fpUtil::perturbValue(input));
    res = func->callAndGetResult(input);
    // std::cout << res << std::endl;
    // if (!fpUtil::enablePertubation) {
    //   func->backUpInstInfoList();
    // }

    if (!func->isSuccess()) {
      res = 0;
    }

    results.emplace_back(res);
  }
  return results;
}

void RangeSolver::_calculateResults2(const FloatVec &inputs) {
  results.clear();
  results.reserve(inputs.size());
  resultsP.clear();
  resultsP.reserve(inputs.size());

  for (const auto &input : inputs) {
    fpUtil::enablePertubation = false;
    double res = func->callAndGetResult(input);
    if (!func->isSuccess()) {
      results.emplace_back(0);
      resultsP.emplace_back(0);
      continue;
    }
    func->backUpInstInfoList();

    fpUtil::enablePertubation = true;
    // double resP = func->callAndGetResult(fpUtil::perturbValue(input));
    double resP = func->callAndGetResult(input);


    results.emplace_back(res);
    resultsP.emplace_back(resP);
  }
}

FloatVec RangeSolver::_calculateDerivatives(const FloatVec &inputs) {
  FloatVec derivatives;
  derivatives.reserve(inputs.size());

  for (const auto &input : inputs) {
    double derivative = func->getNumericalDerivative(input);
    derivatives.emplace_back(derivative);
  }
  return derivatives;
}

Vec<BitsType> RangeSolver::_calculateULPErrors(const FloatVec &results,
                                               const FloatVec &resultsP) {
  Vec<BitsType> errors(results.size());
  std::transform(
      results.begin(), results.end(), resultsP.begin(), errors.begin(),
      [](FloatType a, FloatType b) { return fpUtil::floatDist(a, b); });
  return errors;
}

FloatVec RangeSolver::_calculateULPRelErrors(const FloatVec &results,
                                             const FloatVec &resultsP) {
  FloatVec relErrors(results.size());
  std::transform(
      results.begin(), results.end(), resultsP.begin(), relErrors.begin(),
      [](FloatType a, FloatType b) { return fpUtil::floatRelativeError(a, b); });
  return relErrors;
}

FloatVec RangeSolver::_calculateConditionNumbers(const FloatVec &inputs, 
                                                const FloatVec &results,
                                                const FloatVec &derivatives) {
  FloatVec conditionNumbers(inputs.size());
  for (size_t i = 0; i < inputs.size(); ++i) {
    FloatType x = inputs[i];
    FloatType fx = results[i];
    FloatType derivative = derivatives[i];
    FloatType abs_fx = std::abs(fx);
    
    // Handle special cases
    if (abs_fx == 0.0 || derivative == 0.0) {
      conditionNumbers[i] = 1.0; // Default condition number
    } else {
      // Calculate condition number: x * derivative / |f(x)|
      conditionNumbers[i] = std::abs(x * derivative / abs_fx);
    }
  }
  return conditionNumbers;
}

FloatVec RangeSolver::_calculateBackwardErrors(const Vec<BitsType> &errors,
                                              const FloatVec &conditionNumbers) {
  FloatVec backwardErrors(errors.size());
  std::transform(
      errors.begin(), errors.end(), conditionNumbers.begin(), backwardErrors.begin(),
      [](BitsType error, FloatType condNum) {
        // Handle special cases
        if (condNum == 0.0) {
          return 0.0; // If condition number is 0, backward error is 0
        }
        
        // Calculate backward error: error / condition_number
        return static_cast<FloatType>(error) / condNum;
      });
  return backwardErrors;
}



