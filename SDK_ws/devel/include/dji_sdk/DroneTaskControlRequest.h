// Generated by gencpp from file dji_sdk/DroneTaskControlRequest.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_DRONETASKCONTROLREQUEST_H
#define DJI_SDK_MESSAGE_DRONETASKCONTROLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_sdk
{
template <class ContainerAllocator>
struct DroneTaskControlRequest_
{
  typedef DroneTaskControlRequest_<ContainerAllocator> Type;

  DroneTaskControlRequest_()
    : task(0)  {
    }
  DroneTaskControlRequest_(const ContainerAllocator& _alloc)
    : task(0)  {
  (void)_alloc;
    }



   typedef uint8_t _task_type;
  _task_type task;



  enum {
    TASK_GOHOME = 1u,
    TASK_TAKEOFF = 4u,
    TASK_LAND = 6u,
  };


  typedef boost::shared_ptr< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DroneTaskControlRequest_

typedef ::dji_sdk::DroneTaskControlRequest_<std::allocator<void> > DroneTaskControlRequest;

typedef boost::shared_ptr< ::dji_sdk::DroneTaskControlRequest > DroneTaskControlRequestPtr;
typedef boost::shared_ptr< ::dji_sdk::DroneTaskControlRequest const> DroneTaskControlRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'dji_sdk': ['/home/nuc/SDK_ws/src/Onboard-SDK-ROS/dji_sdk/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3d0779d88f1c88b74d6da1390832b1b";
  }

  static const char* value(const ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3d0779d88f1c88bULL;
  static const uint64_t static_value2 = 0x74d6da1390832b1bULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/DroneTaskControlRequest";
  }

  static const char* value(const ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
uint8 TASK_GOHOME = 1\n\
uint8 TASK_TAKEOFF = 4\n\
uint8 TASK_LAND = 6\n\
\n\
\n\
uint8 task\n\
";
  }

  static const char* value(const ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DroneTaskControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::DroneTaskControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "task: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.task);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_DRONETASKCONTROLREQUEST_H
