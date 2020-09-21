# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nmea_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Inmea_msgs:/home/nuc/SDK_ws/src/nmea_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nmea_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" NAME_WE)
add_custom_target(_nmea_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nmea_msgs" "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" NAME_WE)
add_custom_target(_nmea_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nmea_msgs" "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" "nmea_msgs/GpgsvSatellite:std_msgs/Header"
)

get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" NAME_WE)
add_custom_target(_nmea_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nmea_msgs" "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" ""
)

get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" NAME_WE)
add_custom_target(_nmea_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nmea_msgs" "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" NAME_WE)
add_custom_target(_nmea_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nmea_msgs" "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" NAME_WE)
add_custom_target(_nmea_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nmea_msgs" "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_cpp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_cpp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_cpp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_cpp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_cpp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(nmea_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nmea_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nmea_msgs_generate_messages nmea_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_cpp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_cpp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_cpp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_cpp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_cpp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_cpp _nmea_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nmea_msgs_gencpp)
add_dependencies(nmea_msgs_gencpp nmea_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nmea_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
)
_generate_msg_eus(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
)
_generate_msg_eus(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
)
_generate_msg_eus(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
)
_generate_msg_eus(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
)
_generate_msg_eus(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(nmea_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nmea_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nmea_msgs_generate_messages nmea_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_eus _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_eus _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_eus _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_eus _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_eus _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_eus _nmea_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nmea_msgs_geneus)
add_dependencies(nmea_msgs_geneus nmea_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nmea_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_lisp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_lisp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_lisp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_lisp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
)
_generate_msg_lisp(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(nmea_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nmea_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nmea_msgs_generate_messages nmea_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_lisp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_lisp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_lisp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_lisp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_lisp _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_lisp _nmea_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nmea_msgs_genlisp)
add_dependencies(nmea_msgs_genlisp nmea_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nmea_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
)
_generate_msg_nodejs(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
)
_generate_msg_nodejs(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
)
_generate_msg_nodejs(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
)
_generate_msg_nodejs(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
)
_generate_msg_nodejs(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(nmea_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(nmea_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(nmea_msgs_generate_messages nmea_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_nodejs _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_nodejs _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_nodejs _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_nodejs _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_nodejs _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_nodejs _nmea_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nmea_msgs_gennodejs)
add_dependencies(nmea_msgs_gennodejs nmea_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nmea_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
)
_generate_msg_py(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg"
  "${MSG_I_FLAGS}"
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
)
_generate_msg_py(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
)
_generate_msg_py(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
)
_generate_msg_py(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
)
_generate_msg_py(nmea_msgs
  "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(nmea_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nmea_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nmea_msgs_generate_messages nmea_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gprmc.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_py _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsv.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_py _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/GpgsvSatellite.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_py _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgsa.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_py _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Gpgga.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_py _nmea_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/SDK_ws/src/nmea_msgs/msg/Sentence.msg" NAME_WE)
add_dependencies(nmea_msgs_generate_messages_py _nmea_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nmea_msgs_genpy)
add_dependencies(nmea_msgs_genpy nmea_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nmea_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nmea_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nmea_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nmea_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nmea_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nmea_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nmea_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nmea_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(nmea_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nmea_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nmea_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
