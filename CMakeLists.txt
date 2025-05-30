cmake_minimum_required(VERSION 3.20)

if(" ${CMAKE_SOURCE_DIR}" STREQUAL " ${CMAKE_BINARY_DIR}")
  message(FATAL_ERROR "
FATAL: In-source builds are not allowed.
       You should create a separate directory for build files.
")
endif()

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


# =============================================
#  Project: Inputs Causing Significant Errors 
# =============================================
project(pi-detector)


# ===============================================================================
#  ADD SUB-TARGETS
# ===============================================================================
add_subdirectory(module)
add_subdirectory(external)