add_library(Core STATIC 
RangeSolver.cc
)

set(EXTERNAL_DIR ${PROJECT_SOURCE_DIR}/external)

target_include_directories(Core PUBLIC 
${INCL_DIR}/Core
${INCL_DIR}/Util
${CMAKE_BINARY_DIR}/include
${EXTERNAL_DIR}/gsl/build/include
${EXTERNAL_DIR}/hsed
)


# Link the necessary libraries
target_link_libraries(Core PUBLIC
  ${EXTERNAL_DIR}/gsl/build/lib/libgsl.a  # Link GSL
  hsed  # Link 'hsed' after building it
)