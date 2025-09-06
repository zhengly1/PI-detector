#include "fpUtil.hh"

namespace fpUtil {
bool enablePertubation = true;
int loopCycle = -1;
int perturbCount = 0;
double condNumThreshold = 1e-5;
std::unordered_map<int, std::string> op_map = {
    {OP_ADD, "OP_ADD"},   {OP_SUB, "OP_SUB"},     {OP_MUL, "OP_MUL"},
    {OP_DIV, "OP_DIV"},   {OP_SIN, "OP_SIN"},     {OP_COS, "OP_COS"},
    {OP_TAN, "OP_TAN"},   {OP_ASIN, "OP_ASIN"},   {OP_ACOS, "OP_ACOS"},
    {OP_ATAN, "OP_ATAN"}, {OP_ATAN2, "OP_ATAN2"}, {OP_SINH, "OP_SINH"},
    {OP_COSH, "OP_COSH"}, {OP_TANH, "OP_TANH"},   {OP_EXP, "OP_EXP"},
    {OP_LOG, "OP_LOG"},   {OP_LOG10, "OP_LOG10"}, {OP_SQRT, "OP_SQRT"},
    {OP_POW, "OP_POW"}, {OP_FMOD, "OP_FMOD"},};
} // namespace fpUtil
