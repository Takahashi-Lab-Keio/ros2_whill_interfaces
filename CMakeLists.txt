cmake_minimum_required(VERSION 3.5)

project(ros2_whill_interfaces)

if(NOT WIN32)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -Wall -Wextra")
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
# find the ROS message code generators
 find_package(rosidl_default_generators REQUIRED)

# declare the message files to generate code for
 set(msg_files
   "msg/WhillModelC.msg"
   "msg/WhillSpeedProfile.msg"
   "msg/CommandWrite.msg"
 )

# declare the service files to generate code for
 set(srv_files
   "srv/SetBatteryVoltageOut.srv"
   "srv/SetPower.srv"
   "srv/SetSpeedProfile.srv"
 )

 rosidl_generate_interfaces(${PROJECT_NAME}
   ${msg_files}
   ${srv_files}
   DEPENDENCIES std_msgs builtin_interfaces geometry_msgs
 )

 ament_export_dependencies(rosidl_default_runtime)

ament_package()
