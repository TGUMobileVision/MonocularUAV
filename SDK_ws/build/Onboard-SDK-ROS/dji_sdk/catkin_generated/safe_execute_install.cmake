execute_process(COMMAND "/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/nuc/SDK_ws/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
