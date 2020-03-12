file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/qbo_face_msgs/msg"
  "../src/qbo_face_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/qbo_face_msgs/srv/__init__.py"
  "../src/qbo_face_msgs/srv/_GetName.py"
  "../src/qbo_face_msgs/srv/_LearnFaces.py"
  "../src/qbo_face_msgs/srv/_RecognizeFace.py"
  "../src/qbo_face_msgs/srv/_Train.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
