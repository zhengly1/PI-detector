#ifndef __CORE_COMMON_HH__
#define __CORE_COMMON_HH__

#include <memory>
#include <vector>

#include "argparse.hh"
#include "json.hh"
#include "fpUtil.hh"

template <typename T>
using Vec = std::vector<T>;
template <typename T>
using Ptr = std::unique_ptr<T>;

using FloatType = double;
using BitsType = typename fpUtil::FloatTraits<FloatType>::BitsType;

using Json = nlohmann::json;
using ArgumentParser = argparse::ArgumentParser;
using Range = std::pair<FloatType, FloatType>;
using String = std::string;
using FloatVec = std::vector<FloatType>;

using TimePoint = std::chrono::steady_clock::time_point;
using Duration = std::chrono::duration<double>;


#endif