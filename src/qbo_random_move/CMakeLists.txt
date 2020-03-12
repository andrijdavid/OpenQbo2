cmake_minimum_required(VERSION 2.8.3)
project(qbo_random_move)
# Load catkin and all dependencies required for this package
find_package(catkin REQUIRED COMPONENTS
	rospy
	qbo_talk
	qbo_face_msgs
	qbo_listen
	qbo_system_info
	qbo_arduqbo
	geometry_msgs
	roscpp
	rospy
	std_msgs
	julius
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

include_directories(
	${catkin_INCLUDE_DIRS}
)

#common commands for building c++ executables and libraries
#add_library(${PROJECT_NAME} src/example.cpp)
#target_link_libraries(${PROJECT_NAME} another_library)


include_directories(${Boost_INCLUDE_DIRS})

catkin_package(
    # DEPENDS
    CATKIN_DEPENDS rospy qbo_talk qbo_face_msgs qbo_listen qbo_system_info qbo_arduqbo
    # INCLUDE_DIRS
    # LIBRARIES
)
