# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rplidar_ros: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rplidar_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" NAME_WE)
add_custom_target(_rplidar_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rplidar_ros" "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" "std_msgs/UInt16"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rplidar_ros
  "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt16.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rplidar_ros
)

### Generating Module File
_generate_module_cpp(rplidar_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rplidar_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rplidar_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rplidar_ros_generate_messages rplidar_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" NAME_WE)
add_dependencies(rplidar_ros_generate_messages_cpp _rplidar_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rplidar_ros_gencpp)
add_dependencies(rplidar_ros_gencpp rplidar_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rplidar_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rplidar_ros
  "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt16.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rplidar_ros
)

### Generating Module File
_generate_module_eus(rplidar_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rplidar_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rplidar_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rplidar_ros_generate_messages rplidar_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" NAME_WE)
add_dependencies(rplidar_ros_generate_messages_eus _rplidar_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rplidar_ros_geneus)
add_dependencies(rplidar_ros_geneus rplidar_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rplidar_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rplidar_ros
  "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt16.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rplidar_ros
)

### Generating Module File
_generate_module_lisp(rplidar_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rplidar_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rplidar_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rplidar_ros_generate_messages rplidar_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" NAME_WE)
add_dependencies(rplidar_ros_generate_messages_lisp _rplidar_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rplidar_ros_genlisp)
add_dependencies(rplidar_ros_genlisp rplidar_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rplidar_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rplidar_ros
  "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt16.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rplidar_ros
)

### Generating Module File
_generate_module_nodejs(rplidar_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rplidar_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rplidar_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rplidar_ros_generate_messages rplidar_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" NAME_WE)
add_dependencies(rplidar_ros_generate_messages_nodejs _rplidar_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rplidar_ros_gennodejs)
add_dependencies(rplidar_ros_gennodejs rplidar_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rplidar_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rplidar_ros
  "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt16.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rplidar_ros
)

### Generating Module File
_generate_module_py(rplidar_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rplidar_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rplidar_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rplidar_ros_generate_messages rplidar_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/rplidar_ros/srv/StartMotor.srv" NAME_WE)
add_dependencies(rplidar_ros_generate_messages_py _rplidar_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rplidar_ros_genpy)
add_dependencies(rplidar_ros_genpy rplidar_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rplidar_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rplidar_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rplidar_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rplidar_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rplidar_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rplidar_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rplidar_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rplidar_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rplidar_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rplidar_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rplidar_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rplidar_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rplidar_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rplidar_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rplidar_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rplidar_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rplidar_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
