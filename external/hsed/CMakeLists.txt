# Define object library for HSED
add_library(HSED_OBJECT OBJECT hsed.c)

# Define intermediate and output files for IR generation and compilation
set(IR_FILE ${CMAKE_CURRENT_BINARY_DIR}/hsed.ll)
set(IR_INSTRUCTED_FILE ${CMAKE_CURRENT_BINARY_DIR}/hsed_i.ll)
set(PIC_FILE ${CMAKE_CURRENT_BINARY_DIR}/.libs/hsed.o)
set(NONPIC_FILE ${CMAKE_CURRENT_BINARY_DIR}/hsed.o)
set(LIB_DIR ${PROJECT_SOURCE_DIR}/lib)

# Ensure output directory for object files exists
file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/.libs)

# Custom command to compile source file to LLVM IR
add_custom_command(OUTPUT ${IR_FILE}
    COMMAND clang-18 -ffp-contract=off -g -emit-llvm -S -Xclang -disable-O0-optnone -I. -I.. -o ${IR_FILE} ${CMAKE_CURRENT_SOURCE_DIR}/hsed.c
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/hsed.c
    COMMENT "Compiling ${CMAKE_CURRENT_SOURCE_DIR}/hsed.c to LLVM IR (${IR_FILE})"
)

# Custom command to apply LLVM passes and generate instructed IR file
add_custom_command(OUTPUT ${IR_INSTRUCTED_FILE}
    COMMAND opt-18 --load-pass-plugin ${LIB_DIR}/libFindFOp.so --load-pass-plugin ${LIB_DIR}/libConvertFOp.so --load-pass-plugin ${LIB_DIR}/libFindFCall.so --load-pass-plugin ${LIB_DIR}/libConvertFCall.so --passes=convert-fop,convert-fcall -S ${IR_FILE} -o ${IR_INSTRUCTED_FILE}
    DEPENDS ${IR_FILE} ${LIB_DIR}/libFindFOp.so ${LIB_DIR}/libConvertFOp.so ${LIB_DIR}/libFindFCall.so ${LIB_DIR}/libConvertFCall.so
    COMMENT "Applying LLVM passes and generating ${IR_INSTRUCTED_FILE}"
)


# Custom command to compile the LLVM IR to object files (PIC and non-PIC)
add_custom_command(OUTPUT ${PIC_FILE} ${NONPIC_FILE}
    COMMAND clang-18 -O2 -fPIC -DPIC -c ${IR_INSTRUCTED_FILE} -o ${PIC_FILE}
    COMMAND clang-18 -O2 -c ${IR_INSTRUCTED_FILE} -o ${NONPIC_FILE}
    DEPENDS ${IR_INSTRUCTED_FILE}
    COMMENT "Compiling ${IR_INSTRUCTED_FILE} to object files"
)

# Create the final static library from the compiled object files
add_library(hsed STATIC ${PIC_FILE} ${NONPIC_FILE})

# Link the pre-built object files with the library
target_link_libraries(hsed PRIVATE Util_OBJECT m)

# Install the static library and header files for hsed
install(TARGETS hsed
    ARCHIVE DESTINATION ${CMAKE_BINARY_DIR}/lib
)

# Install the header file to the appropriate location
install(FILES hsed.h
    DESTINATION ${CMAKE_BINARY_DIR}/include/hsed
)

