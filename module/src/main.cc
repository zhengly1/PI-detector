#include <cstddef>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <memory>
#include <string>
#include <unistd.h>

#include "Common.hh"
#include "Core/RangeSolver.hh"
#include "Core/fpInterface.hh"
#include "fpUtil.hh"

bool relativeError = false; // Flag for relative error calculation.
bool computeDerivatives = true; // Flag for computing numerical derivatives.

// Function to load JSON data from a file and parse it.
Ptr<Json> loadJson(const String &path) {
  Ptr<Json> data = std::make_unique<Json>();
  std::ifstream file(path);
  if (!file) {
    std::cerr << "Error opening JSON file: " << path << std::endl;
    exit(EXIT_FAILURE);
  }

  try {
    file >> *data;
  } catch (const Json::parse_error &e) {
    std::cerr << "Error parsing JSON file: " << e.what() << std::endl;
    exit(EXIT_FAILURE);
  }
  return data;
}

// Function to save JSON data to a file with pretty printing.
void saveJson(const String &path, const Json &data) {
  std::ofstream file(path);
  if (!file) {
    std::cerr << "Error writing to JSON file: " << path << std::endl;
    exit(EXIT_FAILURE);
  }
  file << std::setw(2) << data << std::endl;
}

// Create a FloatingPointFunction instance based on lib and index.
std::unique_ptr<FloatingPointFunction>
createFunctionInstance(const String &lib, size_t funcIndex) {
  if (lib == "gsl") {
    return std::make_unique<GSLFunction>(funcIndex);
  } else if (lib == "hsed") {
    return std::make_unique<HSEDFunction>(funcIndex);
  } else if (lib == "example") {
    return std::make_unique<SimpleFunction>(funcIndex);
  } else {
    std::cerr << "Unsupported lib: " << lib << std::endl;
    exit(EXIT_FAILURE);
  }
}

// Run functions with provided inputs using RangeSolver.
Ptr<Json> runWithInputs(const String &lib, const Ptr<Json> &inputsData) {
  RangeSolver rangeSolver;

  Ptr<Json> results = std::make_unique<Json>();

  // Collect keys as integers for sorting
  std::vector<std::pair<int, std::string>> sortedKeys;
  for (const auto &[key, value] : inputsData->items()) {
    sortedKeys.emplace_back(std::stoi(key),
                            key); // Pair (integer key, string key)
  }

  // Sort the keys based on the integer values
  std::sort(sortedKeys.begin(), sortedKeys.end(),
            [](const auto &a, const auto &b) { return a.first < b.first; });

  // Now iterate over the sorted keys
  for (const auto &[intKey, key] : sortedKeys) {
    auto inputsList = inputsData->at(key)["inputs"].get<Vec<FloatVec>>();
    auto funcIndex = intKey; // Use the integer key for function index

    Vec<FloatVec> resultsList;
    Vec<FloatVec> resultsListP;
    Vec<FloatVec> derivativesList; // 新增：存储导数结果
    Vec<FloatVec> conditionNumbersList; // 新增：存储条件数结果
    Vec<FloatVec> backwardErrorsList; // 新增：存储后向误差结果

    Vec<Vec<BitsType>> errorsList;
    Vec<FloatVec> relErrorsList;
    for (const auto &inputs : inputsList) {
      auto func = createFunctionInstance(lib, funcIndex);
      rangeSolver.runOneFuncWithInputs(func, inputs, computeDerivatives);
      resultsList.push_back(rangeSolver.results);
      resultsListP.push_back(rangeSolver.resultsP);
      
      // 如果计算了导数，则保存导数结果
      if (computeDerivatives) {
        derivativesList.push_back(rangeSolver.derivatives);
        conditionNumbersList.push_back(rangeSolver.conditionNumbers);
        if (!relativeError) {
          backwardErrorsList.push_back(rangeSolver.backwardErrors);
        }
      }

      if (relativeError) {
        relErrorsList.push_back(rangeSolver.relErrors);
      } else {
        errorsList.push_back(rangeSolver.errors);
      }
      // errorsList.push_back(rangeSolver.relErrors);

      // Output function execution time.
      // std::cout << "Function Index: " << funcIndex
      //           << ", Time: " << rangeSolver.elapsedDuration.count() * 1000
      //           << " seconds"
      //           << std::endl;
      // std::cout << rangeSolver.elapsedDuration.count() * 1000 << std::endl;
      std::cout << "Function Index: " << funcIndex << std::setw(10)
                << rangeSolver.origDuration.count() * 1000 << std::setw(10)
                << rangeSolver.perturbDuration.count() * 1000 << std::setw(10)
                << fpUtil::perturbCount << std::endl;

      fpUtil::perturbCount = 0;
    }

    // Store results in JSON.
    if (computeDerivatives) {
      if (relativeError) {
        (*results)[key] = {{"inputs", inputsList},
                           {"results", resultsList},
                           {"derivatives", derivativesList},
                           {"condition_numbers", conditionNumbersList},
                           {"errors", relErrorsList}};
      } else {
        (*results)[key] = {{"inputs", inputsList},
                           {"results", resultsList},
                           {"derivatives", derivativesList},
                           {"condition_numbers", conditionNumbersList},
                           {"backward_errors", backwardErrorsList},
                           {"errors", errorsList}};
      }
    } else {
      if (relativeError) {
        (*results)[key] = {{"inputs", inputsList},
                           {"results", resultsList},
                           {"errors", relErrorsList}};
      } else {
        (*results)[key] = {{"inputs", inputsList},
                           {"results", resultsList},
                           {"errors", errorsList}};
      }
    }
  }
  return results;
}

// Parse command-line arguments and return an ArgumentParser instance.
Ptr<ArgumentParser> parseArg(const int argc, const char *argv[]) {
  auto args = std::make_unique<ArgumentParser>("detector");

  // Add required arguments with allowed choices.
  args->add_argument("lib")
      .required()
      .choices("gsl", "hsed", "matrix")
      .help("Specify the library to use (gsl/hsed/matrix)");

  args->add_argument("mode")
      .required()
      .choices("input", "matrix")
      .help("Specify the mode (range/input/matrix)");

  args->add_argument("input").required().help("Specify the input file path");

  args->add_argument("output").required().help("Specify the output file path");

  args->add_argument("--relerr")
      .default_value(false)
      .implicit_value(true)
      .help("Calculate relative error instead of ulp error");
      
  args->add_argument("--derivatives")
      .default_value(false)
      .implicit_value(true)
      .help("Compute numerical derivatives (num_value = (func(x+1e-5)-func(x))/1e-5)");

  try {
    args->parse_args(argc, argv);
  } catch (const std::exception &e) {
    std::cerr << "Error: " << e.what() << std::endl;
    std::cerr << args->help().str() << std::endl;
    exit(EXIT_FAILURE);
  }

  return args;
}

class NullBuffer : public std::streambuf {
public:
  int overflow(int c) override {
    // Discard the character by simply returning success
    return c;
  }
};

int main(const int argc, const char *argv[]) {
  auto args = parseArg(argc, argv);

  // Read arguments.
  const String lib = args->get<String>("lib");
  const String mode = args->get<String>("mode");
  const String inputFilePath = args->get<String>("input");
  const String outputFilePath = args->get<String>("output");
  relativeError = args->get<bool>("relerr");
  computeDerivatives = args->get<bool>("derivatives");

  std::cout << "lib: " << lib << std::endl;
  std::cout << "mode: " << mode << std::endl;
  std::cout << "input file path: " << inputFilePath << std::endl;
  std::cout << "output file path: " << outputFilePath << std::endl;
  std::cout << "relative error: " << (relativeError ? "true" : "false")
            << std::endl;
  std::cout << "compute derivatives: " << (computeDerivatives ? "true" : "false")
            << std::endl;
  

  Ptr<Json> results;
  // Determine mode and run corresponding function.
  if (mode == "input") {
    results = runWithInputs(lib, loadJson(inputFilePath));
    saveJson(outputFilePath, *results);
  } else {
    abort();
    // runMatrix();
  }

  return EXIT_SUCCESS;
}
