file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/qbo_face_msgs/msg"
  "../src/qbo_face_msgs/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rosbuild_precompile.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
