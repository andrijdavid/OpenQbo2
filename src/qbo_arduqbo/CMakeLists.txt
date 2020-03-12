cmake_minimum_required(VERSION 2.8.3)
project(qbo_arduqbo)

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

find_package(catkin REQUIRED COMPONENTS
 roscpp
 rospy
 std_msgs
 tf
 message_generation
 qbo_cereal_port
)

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   LCD.msg
   Expression.msg
   EyesPositions.msg
   HeadPose.msg
   Mic.msg
   Mouth.msg
   Nose.msg
   BatteryLevel.msg
   motor_state.msg
   Irs.msg
   NoiseLevels.msg
 )

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   BaseStop.srv
   TorqueEnable.srv
   Test.srv
 )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
)


catkin_package(
   INCLUDE_DIRS include
#  LIBRARIES qbo_arduqbo
  CATKIN_DEPENDS roscpp rospy std_msgs tf message_runtime qbo_cereal_port
  # DEPENDS system_lib
)

include_directories(include ${catkin_INCLUDE_DIRS})

#common commands for building c++ executables and libraries
add_library(libdxl src/dynamixel_sdk/src/dxl_hal.c)
add_library(dynamixel src/dynamixel_sdk/src/dynamixel.c)
target_link_libraries(dynamixel libdxl)

add_library(arduqbo_instructions_lib src/driver/arduqbo_instructions.cpp)
add_library(qboduino_driver_lib src/driver/qboduino_driver.cpp)
target_link_libraries(qboduino_driver_lib arduqbo_instructions_lib)
add_dependencies(qboduino_driver_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)


add_library(servos_lib src/servos.cpp)
target_link_libraries(servos_lib dynamixel libdxl)

add_library(base_controller_lib src/controllers/base_controller.cpp)
add_dependencies(base_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(battery_controller_lib src/controllers/battery_controller.cpp)
add_dependencies(battery_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(joint_controller_lib src/controllers/joint_controller.cpp)
add_dependencies(joint_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)
target_link_libraries(joint_controller_lib servos_lib)

add_library(lcd_controller_lib src/controllers/lcd_controller.cpp)
add_dependencies(lcd_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(mics_controller_lib src/controllers/mics_controller.cpp)
add_dependencies(mics_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(mouth_controller_lib src/controllers/mouth_controller.cpp)
add_dependencies(mouth_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(nose_controller_lib src/controllers/nose_controller.cpp)
add_dependencies(nose_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(srf10_controller_lib src/controllers/srf10_controller.cpp)
add_dependencies(srf10_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(imu_controller_lib src/controllers/imu_controller.cpp)
add_dependencies(imu_controller_lib qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_library(irs_controller_lib src/controllers/infra_red_recievers_controller.cpp)
add_dependencies(irs_controller_lib  qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)

add_executable(qbo_arduqbo src/qbo_arduqbo.cpp)
target_link_libraries(qbo_arduqbo cereal_port qboduino_driver_lib base_controller_lib battery_controller_lib joint_controller_lib lcd_controller_lib mics_controller_lib mouth_controller_lib nose_controller_lib srf10_controller_lib imu_controller_lib irs_controller_lib pthread dynamixel libdxl ${catkin_LIBRARIES})
add_dependencies(qbo_arduqbo qbo_arduqbo_generate_messages_cpp qbo_arduqbo_generate_services_cpp)
