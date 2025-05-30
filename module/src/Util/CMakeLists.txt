set(PERTURBATOR_OBJ ${CMAKE_SOURCE_DIR}/obj/perturbator.cc.o)
set_source_files_properties(${PERTURBATOR_OBJ} PROPERTIES GENERATED TRUE)

add_library(Util_OBJECT OBJECT
  fpUtil.cc
  handler.cc
  ${PERTURBATOR_OBJ}
)

# Ensure that the object files are compiled with -fPIC
set_target_properties(Util_OBJECT PROPERTIES POSITION_INDEPENDENT_CODE ON)

# Specify include directories for Util_OBJECT
target_include_directories(Util_OBJECT PUBLIC ${INCL_DIR}/Util)

# Create a custom target that depends on the object library
add_custom_target(Util
  DEPENDS Util_OBJECT
)
