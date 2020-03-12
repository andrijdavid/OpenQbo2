cmake_minimum_required(VERSION 2.8.3)
project(qbo_system_info)
# Load catkin and all dependencies required for this package
# TODO: remove all from COMPONENTS that are not catkin packages.
find_package(catkin REQUIRED COMPONENTS
  std_msgs
  rospy
  message_generation
)

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

#uncomment if you have defined services
add_service_files(
  FILES
  AskInfo.srv
)

include_directories(${Boost_INCLUDE_DIRS} ${catkin_INCLUDE_DIRS})

generate_messages(
    DEPENDENCIES std_msgs
)

# catkin_package parameters: http://ros.org/doc/groovy/api/catkin/html/dev_guide/generated_cmake_api.html#catkin-package
# TODO: fill in what other packages will need to use this package
catkin_package(
    # DEPENDS std_msgs rospy
    CATKIN_DEPENDS rospy
    # INCLUDE_DIRS
    # LIBRARIES
)
