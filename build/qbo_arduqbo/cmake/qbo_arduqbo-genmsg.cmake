# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qbo_arduqbo: 11 messages, 3 services")

set(MSG_I_FLAGS "-Iqbo_arduqbo:/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qbo_arduqbo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" "qbo_arduqbo/Mouth:qbo_arduqbo/EyesPositions:std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" NAME_WE)
add_custom_target(_qbo_arduqbo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_arduqbo" "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg;/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)

### Generating Services
_generate_srv_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_cpp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
)

### Generating Module File
_generate_module_cpp(qbo_arduqbo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qbo_arduqbo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qbo_arduqbo_generate_messages qbo_arduqbo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_cpp _qbo_arduqbo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_arduqbo_gencpp)
add_dependencies(qbo_arduqbo_gencpp qbo_arduqbo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_arduqbo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg;/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)

### Generating Services
_generate_srv_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_eus(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
)

### Generating Module File
_generate_module_eus(qbo_arduqbo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qbo_arduqbo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qbo_arduqbo_generate_messages qbo_arduqbo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_eus _qbo_arduqbo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_arduqbo_geneus)
add_dependencies(qbo_arduqbo_geneus qbo_arduqbo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_arduqbo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg;/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)

### Generating Services
_generate_srv_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_lisp(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
)

### Generating Module File
_generate_module_lisp(qbo_arduqbo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qbo_arduqbo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qbo_arduqbo_generate_messages qbo_arduqbo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_lisp _qbo_arduqbo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_arduqbo_genlisp)
add_dependencies(qbo_arduqbo_genlisp qbo_arduqbo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_arduqbo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg;/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)

### Generating Services
_generate_srv_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_nodejs(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
)

### Generating Module File
_generate_module_nodejs(qbo_arduqbo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qbo_arduqbo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qbo_arduqbo_generate_messages qbo_arduqbo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_nodejs _qbo_arduqbo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_arduqbo_gennodejs)
add_dependencies(qbo_arduqbo_gennodejs qbo_arduqbo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_arduqbo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg;/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_msg_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)

### Generating Services
_generate_srv_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)
_generate_srv_py(qbo_arduqbo
  "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
)

### Generating Module File
_generate_module_py(qbo_arduqbo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qbo_arduqbo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qbo_arduqbo_generate_messages qbo_arduqbo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg" NAME_WE)
add_dependencies(qbo_arduqbo_generate_messages_py _qbo_arduqbo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_arduqbo_genpy)
add_dependencies(qbo_arduqbo_genpy qbo_arduqbo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_arduqbo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_arduqbo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qbo_arduqbo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_arduqbo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qbo_arduqbo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_arduqbo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qbo_arduqbo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_arduqbo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qbo_arduqbo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_arduqbo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qbo_arduqbo_generate_messages_py std_msgs_generate_messages_py)
endif()
