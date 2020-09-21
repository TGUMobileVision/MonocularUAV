# Install script for directory: /home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nuc/SDK_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/FCTimeInUTC.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/GPSUTC.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/Gimbal.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/Waypoint.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/WaypointList.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/MobileData.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/PayloadData.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/MissionWaypointAction.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/MissionWaypoint.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/MissionWaypointTask.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/MissionHotpointTask.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/FlightAnomaly.msg"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg/VOPosition.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/srv" TYPE FILE FILES
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/Activation.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/CameraAction.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/DroneTaskControl.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/SDKControlAuthority.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/SetLocalPosRef.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MFIOConfig.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MFIOSetValue.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/DroneArmControl.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionStatus.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpAction.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpAction.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpUpload.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpSetSpeed.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpGetSpeed.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpGetInfo.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpUpload.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpGetInfo.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpUpdateYawRate.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpUpdateRadius.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpResetYaw.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/SendMobileData.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/SendPayloadData.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/SetHardSync.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/QueryDroneVersion.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/Stereo240pSubscription.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/StereoVGASubscription.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/StereoDepthSubscription.srv"
    "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/srv/SetupCameraStream.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES "/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdk-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/devel/include/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/devel/share/roseus/ros/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/devel/share/common-lisp/ros/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/devel/share/gennodejs/ros/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nuc/SDK_ws/devel/lib/python2.7/dist-packages/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/devel/lib/python2.7/dist-packages/dji_sdk" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/devel/lib/python2.7/dist-packages/dji_sdk" FILES_MATCHING REGEX "/home/nuc/SDK_ws/devel/lib/python2.7/dist-packages/dji_sdk/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdk.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES "/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdk-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES
    "/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdkConfig.cmake"
    "/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdkConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk" TYPE FILE FILES "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dji_sdk" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/include/dji_sdk/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dji_sdk" TYPE EXECUTABLE FILES "/home/nuc/SDK_ws/devel/lib/dji_sdk/dji_sdk_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/launch" TYPE DIRECTORY FILES "/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/launch")
endif()

