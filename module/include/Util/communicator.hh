#ifndef __UTIL_COMMUNICATOR_HH__
#define __UTIL_COMMUNICATOR_HH__

#include "opcode.hh"
#include "fpUtil.hh"
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <iomanip>
#include <ios>
#include <set>
#include <stdint.h>
#include <utility>
#include <vector>
#include <iostream>
#include <fstream>
// #include <iomanip>
#include <functional>
#include <map>

struct InstInfo {
  uint64_t opcode = -1;
  double result = 0;
  double op1 = 0;
  double op2 = 0;
  uint64_t instID = 0;
//   std::string funcName;
//   std::string modName;
//   int32_t debugLine = 0;
//   int32_t debugCol = 0;
};

// 初始化映射表
static const std::map<int32_t, std::function<double(double)>> unaryFuncMap = {
    {OP_SIN,  [](double x) { return sin(x); }},
    {OP_COS,  [](double x) { return cos(x); }},
    {OP_TAN,  [](double x) { return tan(x); }},
    {OP_ASIN, [](double x) { return asin(x); }},
    {OP_ACOS, [](double x) { return acos(x); }},
    {OP_ATAN, [](double x) { return atan(x); }},
    {OP_SINH, [](double x) { return sinh(x); }},
    {OP_COSH, [](double x) { return cosh(x); }},
    {OP_TANH, [](double x) { return tanh(x); }},
    {OP_EXP,  [](double x) { return exp(x); }},
    {OP_LOG,  [](double x) { return log(x); }},
    {OP_LOG10,[](double x) { return log10(x); }},
    {OP_SQRT, [](double x) { return sqrt(x); }},
};

static const std::map<int32_t, std::function<double(double, double)>> binaryFuncMap = {
    {OP_ADD, [](double x, double y) { return x + y; }},
    {OP_SUB, [](double x, double y) { return x - y; }},
    {OP_FMOD, [](double x, double y) { return fmod(x, y); }},
};

class Communicator {
public:
  static Communicator &getInstance() {
    static Communicator instance;
    return instance;
  }

private:
  Communicator() {}

public:
  Communicator(Communicator const &) = delete;
  void operator=(Communicator const &) = delete;

private:
  std::vector<double> infoList;
  std::vector<double> infoListBackup;
  std::set<uint64_t> instIDSet;
  bool record = true;
  int unStable[OPSIZE] = {};

  int counter;

  static bool verbose;

public:
  void initComm() {
    clearInfoList();
    record = true;
    // setup all unstable operations.
    unStable[OP_ADD] = 1;
    unStable[OP_SUB] = 1;
    unStable[OP_MUL] = 0;
    unStable[OP_DIV] = 0;

    unStable[OP_SIN] = 1;
    unStable[OP_COS] = 1;
    unStable[OP_TAN] = 1;
    unStable[OP_ASIN] = 1;
    unStable[OP_ACOS] = 1;
    unStable[OP_ATAN] = 0;
    unStable[OP_ATAN2] = 0;

    unStable[OP_SINH] = 1;
    unStable[OP_COSH] = 1;
    unStable[OP_TANH] = 0;

    unStable[OP_EXP] = 0;
    unStable[OP_LOG] = 1;
    unStable[OP_LOG10] = 1;

    unStable[OP_SQRT] = 0;
    unStable[OP_POW] = 1;
  }

  void clearInstIDSet() {
    std::set<uint64_t> emptySet;
    std::swap(instIDSet, emptySet);
  }

  void clear() { clearInfoList(); }

  void clearInfoList() {
    std::vector<double> emptyList;
    std::swap(infoList, emptyList);
  }

  void writeInstInfo(double result) {
    // if (record == false) {
    //   return;
    // }
    // if (unStable[opcode] == 0) {
    //   return;
    // }
    // The below code works if record sets to true.
    // InstInfo info;
    // info.opcode = opcode;
    // info.result = result;
    // info.op1 = op1;
    // info.op2 = op2;

    // info.instID = instID;

    // infoList.push_back(info);
    infoList.push_back(result);
    // infoList.emplace_back(opcode, result, op1, op2, instID);
    // double condNum1 = fpUtil::rawCondition(opcode, op1, op2);

  }

  void log() {
  }

  double secondPerturb(uint64_t opcode, double result, double op1, double op2) {
    double newResult = result;

    if (fpUtil::floatDist(result, infoListBackup[counter]) < 100) {
    // if (true) {
      // 说明结果相同了，再次扰动
      // 现在选择第一个操作数扰动

      // std::cout << "----------- Second Perturbation -----------" << std::endl;

      // std::cout << std::fixed << std::setprecision(17) << op1 << " " 
      //           << infoListBackup[counter].op1 << " "
      //           << fpUtil::floatDist(op1, infoListBackup[counter].op1) 
      //           << std::endl;
      // std::cout << fpUtil::op_map[opcode] << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << op2 << " " 
      //           << infoListBackup[counter].op2 << " "
      //           << fpUtil::floatDist(op2, infoListBackup[counter].op2) 
      //           << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << result << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << infoListBackup[counter].result << std::endl;
      // std::cout << fpUtil::floatDist(result, infoListBackup[counter].result) << std::endl;

      double perturb_op1 = fpUtil::perturbValue(op1);
      // double perturb_op1 = op1;

      // 重新计算结果
      if (opcode == OP_ADD) {
        newResult = perturb_op1 + op2;
      } else if (opcode == OP_SUB) {
        newResult = perturb_op1 - op2;
      } else if (opcode >= 1 && opcode <= 15) {
        newResult = unaryFuncMap.at(opcode)(perturb_op1);

      } else {
        // error
        fprintf(stderr, "Unsupported operation\n");
        exit(EXIT_FAILURE);
      }


      // std::cout << "-----------------------------------------" << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << perturb_op1 << " " 
      //           << infoListBackup[counter].op1 << " "
      //           << fpUtil::floatDist(perturb_op1, infoListBackup[counter].op1) 
      //           << std::endl;
      // std::cout << fpUtil::op_map[opcode] << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << op2 << " " 
      //           << infoListBackup[counter].op2 << " "
      //           << fpUtil::floatDist(op2, infoListBackup[counter].op2) 
      //           << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << newResult << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << infoListBackup[counter].result << std::endl;
      // std::cout << fpUtil::floatDist(newResult, infoListBackup[counter].result) << std::endl;

    } else {
      // 不用二次扰动

      // std::cout << "----------- No Second Perturbation -----------" << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << op1 << " " 
      //           << infoListBackup[counter].op1 << " "
      //           << fpUtil::floatDist(op1, infoListBackup[counter].op1) 
      //           << std::endl; 
      // std::cout << fpUtil::op_map[opcode] << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << op2 << " " 
      //           << infoListBackup[counter].op2 << " "
      //           << fpUtil::floatDist(op2, infoListBackup[counter].op2) 
      //           << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << result << std::endl;
      // std::cout << std::fixed << std::setprecision(17) << infoListBackup[counter].result << std::endl;
      // std::cout << fpUtil::floatDist(result, infoListBackup[counter].result) << std::endl;

    }
    counter++;
    return newResult;
  }

  std::vector<double> getInstInfoList() { return infoList; }

  void backUpInstInfoList() {
    counter = 0;
    // TODO
    infoListBackup = std::move(infoList); 
    // infoListBackup.clear();
    // std::move(infoList.begin(), infoList.end(), std::back_inserter(infoListBackup));
    // also save to a file
    // std::ofstream file("instInfo.txt");
    // if (!file) {
    //   std::cerr << "Error writing to instInfo file" << std::endl;
    //   exit(EXIT_FAILURE);
    // }
    // for (const auto &inst : infoListBackup) {
    //   file << inst.opcode << " " << inst.result << " " << inst.op1 << " " << inst.op2 << " " << inst.instID << std::endl;
    // }
  }

  bool isEmpty() { return infoList.empty(); }

  // static void setVerbose(bool v) { verbose = v; }
  // static bool getVerbose() { return verbose; }

};

#endif