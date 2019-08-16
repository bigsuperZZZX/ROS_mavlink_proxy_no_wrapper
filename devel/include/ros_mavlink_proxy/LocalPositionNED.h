// Generated by gencpp from file ros_mavlink_proxy/LocalPositionNED.msg
// DO NOT EDIT!


#ifndef ROS_MAVLINK_PROXY_MESSAGE_LOCALPOSITIONNED_H
#define ROS_MAVLINK_PROXY_MESSAGE_LOCALPOSITIONNED_H


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
struct LocalPositionNED_
{
  typedef LocalPositionNED_<ContainerAllocator> Type;

  LocalPositionNED_()
    : header()
    , time_boot_ms(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , origin_system_id(0)  {
    }
  LocalPositionNED_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time_boot_ms(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , origin_system_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _time_boot_ms_type;
  _time_boot_ms_type time_boot_ms;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _vx_type;
  _vx_type vx;

   typedef float _vy_type;
  _vy_type vy;

   typedef float _vz_type;
  _vz_type vz;

   typedef uint8_t _origin_system_id_type;
  _origin_system_id_type origin_system_id;





  typedef boost::shared_ptr< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> const> ConstPtr;

}; // struct LocalPositionNED_

typedef ::ros_mavlink_proxy::LocalPositionNED_<std::allocator<void> > LocalPositionNED;

typedef boost::shared_ptr< ::ros_mavlink_proxy::LocalPositionNED > LocalPositionNEDPtr;
typedef boost::shared_ptr< ::ros_mavlink_proxy::LocalPositionNED const> LocalPositionNEDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91abeb7c1beef8d0c79097f32d5e766f";
  }

  static const char* value(const ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91abeb7c1beef8d0ULL;
  static const uint64_t static_value2 = 0xc79097f32d5e766fULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_mavlink_proxy/LocalPositionNED";
  }

  static const char* value(const ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message for LOCAL_POSITION_NED ( #32 )\n\
# \"NED\" is the name of a coordinate system\n\
# zxzxzxzx\n\
\n\
std_msgs/Header header\n\
\n\
uint32 time_boot_ms	#ms	Timestamp (time since system boot).\n\
float32 x                 #m	X Position\n\
float32 y                 #m	Y Position\n\
float32 z                 #m	Z Position\n\
float32 vx		#m/s	X Speed\n\
float32 vy		#m/s	Y Speed\n\
float32 vz		#m/s	Z Speed\n\
\n\
uint8 origin_system_id\n\
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

  static const char* value(const ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time_boot_ms);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vz);
      stream.next(m.origin_system_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LocalPositionNED_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_mavlink_proxy::LocalPositionNED_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_boot_ms: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_boot_ms);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "vx: ";
    Printer<float>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<float>::stream(s, indent + "  ", v.vy);
    s << indent << "vz: ";
    Printer<float>::stream(s, indent + "  ", v.vz);
    s << indent << "origin_system_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.origin_system_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_MAVLINK_PROXY_MESSAGE_LOCALPOSITIONNED_H