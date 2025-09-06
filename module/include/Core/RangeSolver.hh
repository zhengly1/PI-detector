#ifndef __CORE_RANGESOLVER_HH__
#define __CORE_RANGESOLVER_HH__

#include "Common.hh"
#include "fpInterface.hh"

#include <ctime>

class RangeSolver {
private:
  FloatVec halfValues;
  Ptr<FloatingPointFunction> func;

public:
  TimePoint startTime;
  TimePoint ckptTime;
  TimePoint finishTime;
  Duration elapsedDuration;
  Duration origDuration;
  Duration perturbDuration;

public:
  FloatVec inputs;
  FloatVec results;
  FloatVec resultsP;
  FloatVec derivatives;
  Vec<BitsType> errors;
  FloatVec relErrors;

public:
  RangeSolver(const FloatVec &halfValues = {}) : halfValues(halfValues) {}

  void runOneFuncWithInputs(Ptr<FloatingPointFunction> &func,
                            const FloatVec &inputs, bool computeDerivatives = false);

  // double getElapsedTime() { return elapsedTime.count(); }

  void printInstInfo();

private:
  void _init(Ptr<FloatingPointFunction> &func);

  FloatVec _extractInputs(const Range &range);

  FloatVec _calculateResults(const FloatVec &inputs, bool enablePerturbation);

  void _calculateResults2(const FloatVec &inputs);
  
  FloatVec _calculateDerivatives(const FloatVec &inputs); 
  
  Vec<BitsType> _calculateULPErrors(const FloatVec &results,
                                    const FloatVec &resultsP);

  FloatVec _calculateULPRelErrors(const FloatVec &results,
                                    const FloatVec &resultsP);

  void printInstructionPair(const InstInfo &inst1, const InstInfo &inst2,
                            double ulpErrorResult, double ulpErrorOp1,
                            double ulpErrorOp2);
};

#endif
