file(REMOVE_RECURSE
  ".libs/hsed.o"
  "hsed.ll"
  "hsed.o"
  "hsed_i.ll"
  "libhsed.a"
  "libhsed.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/hsed.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
