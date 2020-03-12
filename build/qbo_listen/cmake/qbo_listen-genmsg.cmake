# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qbo_listen: 1 messages, 4 services")

set(MSG_I_FLAGS "-Iqbo_listen:/home/qbo/Desktop/melodia/src/qbo_listen/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qbo_listen_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" NAME_WE)
add_custom_target(_qbo_listen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_listen" "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" NAME_WE)
add_custom_target(_qbo_listen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_listen" "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" NAME_WE)
add_custom_target(_qbo_listen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_listen" "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" NAME_WE)
add_custom_target(_qbo_listen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_listen" "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" ""
)

get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" NAME_WE)
add_custom_target(_qbo_listen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbo_listen" "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
)

### Generating Services
_generate_srv_cpp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
)
_generate_srv_cpp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
)
_generate_srv_cpp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
)
_generate_srv_cpp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
)

### Generating Module File
_generate_module_cpp(qbo_listen
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qbo_listen_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qbo_listen_generate_messages qbo_listen_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" NAME_WE)
add_dependencies(qbo_listen_generate_messages_cpp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_cpp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_cpp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_cpp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_cpp _qbo_listen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_listen_gencpp)
add_dependencies(qbo_listen_gencpp qbo_listen_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_listen_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
)

### Generating Services
_generate_srv_eus(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
)
_generate_srv_eus(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
)
_generate_srv_eus(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
)
_generate_srv_eus(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
)

### Generating Module File
_generate_module_eus(qbo_listen
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qbo_listen_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qbo_listen_generate_messages qbo_listen_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" NAME_WE)
add_dependencies(qbo_listen_generate_messages_eus _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_eus _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_eus _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_eus _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_eus _qbo_listen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_listen_geneus)
add_dependencies(qbo_listen_geneus qbo_listen_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_listen_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
)

### Generating Services
_generate_srv_lisp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
)
_generate_srv_lisp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
)
_generate_srv_lisp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
)
_generate_srv_lisp(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
)

### Generating Module File
_generate_module_lisp(qbo_listen
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qbo_listen_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qbo_listen_generate_messages qbo_listen_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" NAME_WE)
add_dependencies(qbo_listen_generate_messages_lisp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_lisp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_lisp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_lisp _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_lisp _qbo_listen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_listen_genlisp)
add_dependencies(qbo_listen_genlisp qbo_listen_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_listen_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
)

### Generating Services
_generate_srv_nodejs(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
)
_generate_srv_nodejs(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
)
_generate_srv_nodejs(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
)
_generate_srv_nodejs(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
)

### Generating Module File
_generate_module_nodejs(qbo_listen
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qbo_listen_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qbo_listen_generate_messages qbo_listen_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" NAME_WE)
add_dependencies(qbo_listen_generate_messages_nodejs _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_nodejs _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_nodejs _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_nodejs _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_nodejs _qbo_listen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_listen_gennodejs)
add_dependencies(qbo_listen_gennodejs qbo_listen_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_listen_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
)

### Generating Services
_generate_srv_py(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
)
_generate_srv_py(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
)
_generate_srv_py(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
)
_generate_srv_py(qbo_listen
  "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
)

### Generating Module File
_generate_module_py(qbo_listen
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qbo_listen_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qbo_listen_generate_messages qbo_listen_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/msg/Listened.msg" NAME_WE)
add_dependencies(qbo_listen_generate_messages_py _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/free_train.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_py _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/spell_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_py _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/new_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_py _qbo_listen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qbo/Desktop/melodia/src/qbo_listen/srv/train_word.srv" NAME_WE)
add_dependencies(qbo_listen_generate_messages_py _qbo_listen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbo_listen_genpy)
add_dependencies(qbo_listen_genpy qbo_listen_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbo_listen_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbo_listen
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qbo_listen_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbo_listen
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qbo_listen_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbo_listen
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qbo_listen_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbo_listen
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qbo_listen_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbo_listen
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qbo_listen_generate_messages_py std_msgs_generate_messages_py)
endif()
