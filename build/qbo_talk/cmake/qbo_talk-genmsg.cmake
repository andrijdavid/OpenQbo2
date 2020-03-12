# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qbo_talk: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qbo_talk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" NAME_WE)
add_custom_target(_qbo_talk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_talk" "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(qbo_talk
  "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_talk
)

### Generating Module File
_generate_module_cpp(qbo_talk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_talk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qbo_talk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qbo_talk_generate_messages qbo_talk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" NAME_WE)
add_dependencies(qbo_talk_generate_messages_cpp _qbo_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_talk_gencpp)
add_dependencies(qbo_talk_gencpp qbo_talk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_talk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(qbo_talk
  "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_talk
)

### Generating Module File
_generate_module_eus(qbo_talk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_talk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qbo_talk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qbo_talk_generate_messages qbo_talk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" NAME_WE)
add_dependencies(qbo_talk_generate_messages_eus _qbo_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_talk_geneus)
add_dependencies(qbo_talk_geneus qbo_talk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_talk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(qbo_talk
  "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_talk
)

### Generating Module File
_generate_module_lisp(qbo_talk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_talk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qbo_talk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qbo_talk_generate_messages qbo_talk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" NAME_WE)
add_dependencies(qbo_talk_generate_messages_lisp _qbo_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_talk_genlisp)
add_dependencies(qbo_talk_genlisp qbo_talk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_talk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(qbo_talk
  "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_talk
)

### Generating Module File
_generate_module_nodejs(qbo_talk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_talk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qbo_talk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qbo_talk_generate_messages qbo_talk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" NAME_WE)
add_dependencies(qbo_talk_generate_messages_nodejs _qbo_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_talk_gennodejs)
add_dependencies(qbo_talk_gennodejs qbo_talk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_talk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(qbo_talk
  "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_talk
)

### Generating Module File
_generate_module_py(qbo_talk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_talk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qbo_talk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qbo_talk_generate_messages qbo_talk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_talk/srv/Text2Speach.srv" NAME_WE)
add_dependencies(qbo_talk_generate_messages_py _qbo_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_talk_genpy)
add_dependencies(qbo_talk_genpy qbo_talk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_talk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_talk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qbo_talk_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_talk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qbo_talk_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_talk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qbo_talk_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_talk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qbo_talk_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_talk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_talk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_talk
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qbo_talk_generate_messages_py std_msgs_generate_messages_py)
endif()
