# ==============================================================================
# Section 1: Custom processing for targetExample.cc to create all_target.a
# ==============================================================================

# -- 提前定义所有需要的路径变量
set(EXTERNAL_DIR ${PROJECT_SOURCE_DIR}/external)
set(INCL_DIR ${PROJECT_SOURCE_DIR}/module/include)

set(TARGET_EXAMPLE_SRC ${CMAKE_CURRENT_SOURCE_DIR}/targetExample.cc)
set(FIND_FOP_MODULE_PATH ${PROJECT_SOURCE_DIR}/lib/libFindFOp.so)
set(CONVERT_FOP_MODULE_PATH ${PROJECT_SOURCE_DIR}/lib/libConvertFOp.so)
set(FIND_FCALL_MODULE_PATH ${PROJECT_SOURCE_DIR}/lib/libFindFCall.so)
set(CONVERT_FCALL_MODULE_PATH ${PROJECT_SOURCE_DIR}/lib/libConvertFCall.so)

# -- 定义中间文件路径
set(TARGET_EXAMPLE_LL ${CMAKE_CURRENT_BINARY_DIR}/targetExample.ll)
set(TARGET_EXAMPLE_I_LL ${CMAKE_CURRENT_BINARY_DIR}/targetExample_i.ll)
set(TARGET_EXAMPLE_PIC_O ${CMAKE_CURRENT_BINARY_DIR}/targetExample.pic.o)
set(TARGET_EXAMPLE_NONPIC_O ${CMAKE_CURRENT_BINARY_DIR}/targetExample.o)


# -- 寻找 LLVM 工具
find_program(CLANG_EXEC NAMES clang-18 clang REQUIRED)
find_program(OPT_EXEC NAMES opt-18 opt REQUIRED)
message(STATUS "Using Clang: ${CLANG_EXEC}")
message(STATUS "Using Opt: ${OPT_EXEC}")

add_custom_command(
    OUTPUT ${TARGET_EXAMPLE_LL}
    COMMAND ${CLANG_EXEC}
            # 使用和 shell 脚本一致的优化和编译选项
            -O2 -std=c++17 -ffp-contract=off -fno-vectorize -fno-slp-vectorize -g
            # 头文件路径
            -I${INCL_DIR}/Core
            -I${INCL_DIR}/Util
            -I${CMAKE_BINARY_DIR}/include
            -I${EXTERNAL_DIR}/gsl/build/include
            -I${EXTERNAL_DIR}/hsed
            # 生成 LLVM IR
            -emit-llvm -S -o ${TARGET_EXAMPLE_LL} ${TARGET_EXAMPLE_SRC}
    DEPENDS ${TARGET_EXAMPLE_SRC}
    COMMENT "Compiling ${TARGET_EXAMPLE_SRC} to optimized LLVM IR"
)

# -- 步骤 B: 运行自定义 LLVM Pass (无变化)
add_custom_command(
    OUTPUT ${TARGET_EXAMPLE_I_LL}
    COMMAND ${OPT_EXEC} -S
            -load-pass-plugin=${FIND_FOP_MODULE_PATH}
            -load-pass-plugin=${CONVERT_FOP_MODULE_PATH}
            -load-pass-plugin=${FIND_FCALL_MODULE_PATH}
            -load-pass-plugin=${CONVERT_FCALL_MODULE_PATH}
            -passes="convert-fop,convert-fcall"
            -o ${TARGET_EXAMPLE_I_LL} ${TARGET_EXAMPLE_LL}
    DEPENDS ${TARGET_EXAMPLE_LL}
            ${FIND_FOP_MODULE_PATH}
            ${CONVERT_FOP_MODULE_PATH}
            ${FIND_FCALL_MODULE_PATH}
            ${CONVERT_FCALL_MODULE_PATH}
    COMMENT "Running custom LLVM passes (convert-fop, convert-fcall) on target IR"
)

# -- 步骤 C: 将插桩后的 IR 编译成 PIC 和 non-PIC 两种目标文件 (无变化)
set(CLANGFLAGS_BASE "-std=c++11 -O2 -fno-rtti")
add_custom_command(
    OUTPUT ${TARGET_EXAMPLE_PIC_O} ${TARGET_EXAMPLE_NONPIC_O}
    COMMAND ${CLANG_EXEC} ${CLANGFLAGS_BASE} -fPIC -DPIC -c -o ${TARGET_EXAMPLE_PIC_O} ${TARGET_EXAMPLE_I_LL}
    COMMAND ${CLANG_EXEC} ${CLANGFLAGS_BASE} -c -o ${TARGET_EXAMPLE_NONPIC_O} ${TARGET_EXAMPLE_I_LL}
    DEPENDS ${TARGET_EXAMPLE_I_LL}
    COMMENT "Compiling instrumented IR to PIC and non-PIC object files"
)

# -- 步骤 D: 从两种目标文件创建静态库 (无变化)
add_library(all_target STATIC
    ${TARGET_EXAMPLE_PIC_O}
    ${TARGET_EXAMPLE_NONPIC_O}
)
set_target_properties(all_target PROPERTIES LINKER_LANGUAGE CXX)

# ==============================================================================
# Section 2: Define and link the main 'Core' library
# ==============================================================================

add_library(Core STATIC
    RangeSolver.cc
)

# -- Set include directories for Core
target_include_directories(Core PUBLIC
    ${INCL_DIR}/Core
    ${INCL_DIR}/Util
    ${CMAKE_BINARY_DIR}/include
    ${EXTERNAL_DIR}/gsl/build/include
    ${EXTERNAL_DIR}/hsed
)

# -- Link the necessary libraries to Core
target_link_libraries(Core PUBLIC
    all_target
    ${EXTERNAL_DIR}/gsl/build/lib/libgsl.a
    hsed
)

