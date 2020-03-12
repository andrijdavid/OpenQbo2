# Install script for directory: /home/qbo/Desktop/melodia/src/qbo_arduqbo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/qbo/Desktop/melodia/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qbo_arduqbo/msg" TYPE FILE FILES
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/LCD.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Expression.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/EyesPositions.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/HeadPose.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mic.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Mouth.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Nose.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/BatteryLevel.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/motor_state.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/Irs.msg"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg/NoiseLevels.msg"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qbo_arduqbo/srv" TYPE FILE FILES
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/BaseStop.srv"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/TorqueEnable.srv"
    "/home/qbo/Desktop/melodia/src/qbo_arduqbo/srv/Test.srv"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qbo_arduqbo/cmake" TYPE FILE FILES "/home/qbo/Desktop/melodia/build/qbo_arduqbo/catkin_generated/installspace/qbo_arduqbo-msg-paths.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qbo/Desktop/melodia/devel/include/qbo_arduqbo")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qbo/Desktop/melodia/devel/share/roseus/ros/qbo_arduqbo")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qbo/Desktop/melodia/devel/share/common-lisp/ros/qbo_arduqbo")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qbo/Desktop/melodia/devel/share/gennodejs/ros/qbo_arduqbo")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/qbo/Desktop/melodia/devel/lib/python2.7/dist-packages/qbo_arduqbo")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/qbo/Desktop/melodia/devel/lib/python2.7/dist-packages/qbo_arduqbo")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qbo/Desktop/melodia/build/qbo_arduqbo/catkin_generated/installspace/qbo_arduqbo.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qbo_arduqbo/cmake" TYPE FILE FILES "/home/qbo/Desktop/melodia/build/qbo_arduqbo/catkin_generated/installspace/qbo_arduqbo-msg-extras.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qbo_arduqbo/cmake" TYPE FILE FILES
    "/home/qbo/Desktop/melodia/build/qbo_arduqbo/catkin_generated/installspace/qbo_arduqboConfig.cmake"
    "/home/qbo/Desktop/melodia/build/qbo_arduqbo/catkin_generated/installspace/qbo_arduqboConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qbo_arduqbo" TYPE FILE FILES "/home/qbo/Desktop/melodia/src/qbo_arduqbo/package.xml")
endif()

