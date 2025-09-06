file(REMOVE_RECURSE
  "../../../lib/liball_target.a"
  "../../../lib/liball_target.pdb"
  "targetExample.ll"
  "targetExample.o"
  "targetExample.pic.o"
  "targetExample_i.ll"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/all_target.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
