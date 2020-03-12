file(REMOVE_RECURSE
  "../srv_gen"
  "../srv_gen"
  "../src/qbo_system_info/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
