cmake_minimum_required(VERSION 2.8.3)
project(qbo_listen)
# Load catkin and all dependencies required for this package
find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
  roscpp
  rospy
  qbo_talk
  julius
)

# include_directories(include ${Boost_INCLUDE_DIR} ${catkin_INCLUDE_DIRS})

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
#set(ROS_BUILD_TYPE RelWithDebInfo)


#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

#uncomment if you have defined messages
add_message_files(
  FILES
  Listened.msg
)

#uncomment if you have defined services
add_service_files(
  FILES
  free_train.srv
  new_word.srv
  spell_word.srv
  train_word.srv
)

#common commands for building c++ executables and libraries
#
# CATKIN_MIGRATION: removed during catkin migration
# rosbuild_add_boost_directories()
#find_package(Boost REQUIRED COMPONENTS thread)
include_directories(${catkin_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS} ${julius_INCLUDE_DIRS})
#target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})
add_executable(qbo_listen src/julius.cpp)
add_dependencies(qbo_listen qbo_listen_generate_messages_cpp qbo_listen_generate_services_cpp)
#add_executable(qbo_listen src/julius_new.cpp)
#target_link_libraries(example ${PROJECT_NAME})

target_link_libraries(qbo_listen  julius  pulse-simple pulse pthread  sent asound z dl m  ${catkin_LIBRARIES})
## Generate added messages and services with any dependencies listed here
generate_messages(
    DEPENDENCIES std_msgs
)

# catkin_package parameters: http://ros.org/doc/groovy/api/catkin/html/dev_guide/generated_cmake_api.html#catkin-package
catkin_package(
    # DEPENDS
    CATKIN_DEPENDS std_msgs roscpp rospy qbo_talk julius
    # INCLUDE_DIRS
    # LIBRARIES
)
