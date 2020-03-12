# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qbo_face_msgs: 1 messages, 4 services")

set(MSG_I_FLAGS "-Iqbo_face_msgs:/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qbo_face_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" NAME_WE)
add_custom_target(_qbo_face_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_face_msgs" "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" NAME_WE)
add_custom_target(_qbo_face_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_face_msgs" "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" NAME_WE)
add_custom_target(_qbo_face_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_face_msgs" "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" NAME_WE)
add_custom_target(_qbo_face_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_face_msgs" "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" NAME_WE)
add_custom_target(_qbo_face_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_face_msgs" "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
)

### Generating Services
_generate_srv_cpp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_cpp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_cpp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_cpp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
)

### Generating Module File
_generate_module_cpp(qbo_face_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qbo_face_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qbo_face_msgs_generate_messages qbo_face_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_cpp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_cpp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_cpp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_cpp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_cpp _qbo_face_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_face_msgs_gencpp)
add_dependencies(qbo_face_msgs_gencpp qbo_face_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_face_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
)

### Generating Services
_generate_srv_eus(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_eus(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_eus(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_eus(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
)

### Generating Module File
_generate_module_eus(qbo_face_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qbo_face_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qbo_face_msgs_generate_messages qbo_face_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_eus _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_eus _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_eus _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_eus _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_eus _qbo_face_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_face_msgs_geneus)
add_dependencies(qbo_face_msgs_geneus qbo_face_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_face_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
)

### Generating Services
_generate_srv_lisp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_lisp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_lisp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_lisp(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
)

### Generating Module File
_generate_module_lisp(qbo_face_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qbo_face_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qbo_face_msgs_generate_messages qbo_face_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_lisp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_lisp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_lisp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_lisp _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_lisp _qbo_face_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_face_msgs_genlisp)
add_dependencies(qbo_face_msgs_genlisp qbo_face_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_face_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
)

### Generating Services
_generate_srv_nodejs(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_nodejs(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_nodejs(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_nodejs(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
)

### Generating Module File
_generate_module_nodejs(qbo_face_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qbo_face_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qbo_face_msgs_generate_messages qbo_face_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_nodejs _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_nodejs _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_nodejs _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_nodejs _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_nodejs _qbo_face_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_face_msgs_gennodejs)
add_dependencies(qbo_face_msgs_gennodejs qbo_face_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_face_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
)

### Generating Services
_generate_srv_py(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_py(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_py(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
)
_generate_srv_py(qbo_face_msgs
  "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
)

### Generating Module File
_generate_module_py(qbo_face_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qbo_face_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qbo_face_msgs_generate_messages qbo_face_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/Train.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_py _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/LearnFaces.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_py _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/msg/FacePosAndDist.msg" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_py _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/GetName.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_py _qbo_face_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_face_msgs/srv/RecognizeFace.srv" NAME_WE)
add_dependencies(qbo_face_msgs_generate_messages_py _qbo_face_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_face_msgs_genpy)
add_dependencies(qbo_face_msgs_genpy qbo_face_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_face_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_face_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(qbo_face_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qbo_face_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(qbo_face_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_face_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(qbo_face_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qbo_face_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(qbo_face_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_face_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(qbo_face_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qbo_face_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(qbo_face_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_face_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(qbo_face_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qbo_face_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(qbo_face_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_face_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(qbo_face_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qbo_face_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(qbo_face_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
