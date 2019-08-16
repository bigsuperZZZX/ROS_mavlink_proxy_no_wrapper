// Generated by gencpp from file ros_mavlink_proxy/CommandLong.msg
// DO NOT EDIT!


#ifndef ROS_MAVLINK_PROXY_MESSAGE_COMMANDLONG_H
#define ROS_MAVLINK_PROXY_MESSAGE_COMMANDLONG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ros_mavlink_proxy
{
template <class ContainerAllocator>
struct CommandLong_
{
  typedef CommandLong_<ContainerAllocator> Type;

  CommandLong_()
    : header()
    , target_system(0)
    , target_component(0)
    , command(0)
    , confirmation(0)
    , param1(0.0)
    , param2(0.0)
    , param3(0.0)
    , param4(0.0)
    , param5(0.0)
    , param6(0.0)
    , param7(0.0)
    , origin_system_id(0)
    , target_system_id(0)  {
    }
  CommandLong_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , target_system(0)
    , target_component(0)
    , command(0)
    , confirmation(0)
    , param1(0.0)
    , param2(0.0)
    , param3(0.0)
    , param4(0.0)
    , param5(0.0)
    , param6(0.0)
    , param7(0.0)
    , origin_system_id(0)
    , target_system_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _target_system_type;
  _target_system_type target_system;

   typedef uint8_t _target_component_type;
  _target_component_type target_component;

   typedef uint16_t _command_type;
  _command_type command;

   typedef uint8_t _confirmation_type;
  _confirmation_type confirmation;

   typedef float _param1_type;
  _param1_type param1;

   typedef float _param2_type;
  _param2_type param2;

   typedef float _param3_type;
  _param3_type param3;

   typedef float _param4_type;
  _param4_type param4;

   typedef float _param5_type;
  _param5_type param5;

   typedef float _param6_type;
  _param6_type param6;

   typedef float _param7_type;
  _param7_type param7;

   typedef uint8_t _origin_system_id_type;
  _origin_system_id_type origin_system_id;

   typedef uint8_t _target_system_id_type;
  _target_system_id_type target_system_id;





  typedef boost::shared_ptr< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> const> ConstPtr;

}; // struct CommandLong_

typedef ::ros_mavlink_proxy::CommandLong_<std::allocator<void> > CommandLong;

typedef boost::shared_ptr< ::ros_mavlink_proxy::CommandLong > CommandLongPtr;
typedef boost::shared_ptr< ::ros_mavlink_proxy::CommandLong const> CommandLongConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_mavlink_proxy

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ros_mavlink_proxy': ['/home/myros/PX4learn/ROS_mavlink_proxy/src/ros_mavlink_proxy/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa6caa6eedcb0ef38370683dbbc48671";
  }

  static const char* value(const ::ros_mavlink_proxy::CommandLong_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa6caa6eedcb0ef3ULL;
  static const uint64_t static_value2 = 0x8370683dbbc48671ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_mavlink_proxy/CommandLong";
  }

  static const char* value(const ::ros_mavlink_proxy::CommandLong_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message for COMMAND_LONG ( #76 )\n\
# zxzxzxzx\n\
\n\
std_msgs/Header header\n\
\n\
\n\
uint8 target_system\n\
uint8 target_component	#Component which should execute the command, 0 for all components\n\
uint16 command		#Command ID (of command to send).\n\
uint8 confirmation		#0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)\n\
float32 param1			#Parameter 1 (for the specific command).\n\
float32 param2			#Parameter 2 (for the specific command).\n\
float32 param3			#Parameter 3 (for the specific command).\n\
float32 param4			#Parameter 4 (for the specific command).\n\
float32 param5			#Parameter 5 (for the specific command).\n\
float32 param6			#Parameter 6 (for the specific command).\n\
float32 param7			#Parameter 7 (for the specific command).\n\
\n\
uint8 origin_system_id\n\
uint8 target_system_id\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::ros_mavlink_proxy::CommandLong_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.target_system);
      stream.next(m.target_component);
      stream.next(m.command);
      stream.next(m.confirmation);
      stream.next(m.param1);
      stream.next(m.param2);
      stream.next(m.param3);
      stream.next(m.param4);
      stream.next(m.param5);
      stream.next(m.param6);
      stream.next(m.param7);
      stream.next(m.origin_system_id);
      stream.next(m.target_system_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommandLong_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_mavlink_proxy::CommandLong_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_mavlink_proxy::CommandLong_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "target_system: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_system);
    s << indent << "target_component: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_component);
    s << indent << "command: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.command);
    s << indent << "confirmation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.confirmation);
    s << indent << "param1: ";
    Printer<float>::stream(s, indent + "  ", v.param1);
    s << indent << "param2: ";
    Printer<float>::stream(s, indent + "  ", v.param2);
    s << indent << "param3: ";
    Printer<float>::stream(s, indent + "  ", v.param3);
    s << indent << "param4: ";
    Printer<float>::stream(s, indent + "  ", v.param4);
    s << indent << "param5: ";
    Printer<float>::stream(s, indent + "  ", v.param5);
    s << indent << "param6: ";
    Printer<float>::stream(s, indent + "  ", v.param6);
    s << indent << "param7: ";
    Printer<float>::stream(s, indent + "  ", v.param7);
    s << indent << "origin_system_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.origin_system_id);
    s << indent << "target_system_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_system_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_MAVLINK_PROXY_MESSAGE_COMMANDLONG_H
