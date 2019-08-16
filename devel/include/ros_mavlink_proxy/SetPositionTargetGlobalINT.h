// Generated by gencpp from file ros_mavlink_proxy/SetPositionTargetGlobalINT.msg
// DO NOT EDIT!


#ifndef ROS_MAVLINK_PROXY_MESSAGE_SETPOSITIONTARGETGLOBALINT_H
#define ROS_MAVLINK_PROXY_MESSAGE_SETPOSITIONTARGETGLOBALINT_H


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
struct SetPositionTargetGlobalINT_
{
  typedef SetPositionTargetGlobalINT_<ContainerAllocator> Type;

  SetPositionTargetGlobalINT_()
    : header()
    , time_boot_ms(0)
    , target_system(0)
    , target_component(0)
    , coordinate_frame(0)
    , type_mask(0)
    , lat_int(0)
    , lon_int(0)
    , alt(0.0)
    , vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , afx(0.0)
    , afy(0.0)
    , afz(0.0)
    , yaw(0.0)
    , yaw_rate(0.0)
    , origin_system_id(0)  {
    }
  SetPositionTargetGlobalINT_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time_boot_ms(0)
    , target_system(0)
    , target_component(0)
    , coordinate_frame(0)
    , type_mask(0)
    , lat_int(0)
    , lon_int(0)
    , alt(0.0)
    , vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , afx(0.0)
    , afy(0.0)
    , afz(0.0)
    , yaw(0.0)
    , yaw_rate(0.0)
    , origin_system_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _time_boot_ms_type;
  _time_boot_ms_type time_boot_ms;

   typedef uint8_t _target_system_type;
  _target_system_type target_system;

   typedef uint8_t _target_component_type;
  _target_component_type target_component;

   typedef uint8_t _coordinate_frame_type;
  _coordinate_frame_type coordinate_frame;

   typedef uint16_t _type_mask_type;
  _type_mask_type type_mask;

   typedef int32_t _lat_int_type;
  _lat_int_type lat_int;

   typedef int32_t _lon_int_type;
  _lon_int_type lon_int;

   typedef float _alt_type;
  _alt_type alt;

   typedef float _vx_type;
  _vx_type vx;

   typedef float _vy_type;
  _vy_type vy;

   typedef float _vz_type;
  _vz_type vz;

   typedef float _afx_type;
  _afx_type afx;

   typedef float _afy_type;
  _afy_type afy;

   typedef float _afz_type;
  _afz_type afz;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef float _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef uint8_t _origin_system_id_type;
  _origin_system_id_type origin_system_id;





  typedef boost::shared_ptr< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> const> ConstPtr;

}; // struct SetPositionTargetGlobalINT_

typedef ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<std::allocator<void> > SetPositionTargetGlobalINT;

typedef boost::shared_ptr< ::ros_mavlink_proxy::SetPositionTargetGlobalINT > SetPositionTargetGlobalINTPtr;
typedef boost::shared_ptr< ::ros_mavlink_proxy::SetPositionTargetGlobalINT const> SetPositionTargetGlobalINTConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a05b877f670b45909e756be5c21b8f2";
  }

  static const char* value(const ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a05b877f670b459ULL;
  static const uint64_t static_value2 = 0x09e756be5c21b8f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_mavlink_proxy/SetPositionTargetGlobalINT";
  }

  static const char* value(const ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message for SET_POSITION_TARGET_GLOBAL_INT ( #86 )\n\
# \"INT\" is the name of a coordinate system\n\
# zxzxzxzx\n\
\n\
std_msgs/Header header\n\
\n\
uint32 time_boot_ms       #ms		Timestamp (time since system boot). The rationale for the timestamp in the setpoint is to allow the system to compensate for the transport delay of the setpoint. This allows the system to compensate processing latency.\n\
uint8 target_system       #		System ID\n\
uint8 target_component    #		Component ID\n\
uint8 coordinate_frame    #		Valid options are: MAV_FRAME_GLOBAL_INT = 5, MAV_FRAME_GLOBAL_RELATIVE_ALT_INT = 6, MAV_FRAME_GLOBAL_TERRAIN_ALT_INT = 11\n\
uint16 type_mask          #		Bitmap to indicate which dimensions should be ignored by the vehicle.\n\
int32 lat_int             #degE7	X Position in WGS84 frame\n\
int32 lon_int             #degE7	Y Position in WGS84 frame\n\
float32 alt                   #m		Altitude (MSL, Relative to home, or AGL - depending on frame)\n\
float32 vx                    #m/s	X velocity in NED frame\n\
float32 vy                    #m/s	Y velocity in NED frame\n\
float32 vz                    #m/s	Z velocity in NED frame\n\
float32 afx                   #m/s/s	X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N\n\
float32 afy                   #m/s/s	Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N\n\
float32 afz                   #m/s/s	Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N\n\
float32 yaw                   #rad	yaw setpoint\n\
float32 yaw_rate              #rad/s	yaw rate setpoint\n\
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

  static const char* value(const ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time_boot_ms);
      stream.next(m.target_system);
      stream.next(m.target_component);
      stream.next(m.coordinate_frame);
      stream.next(m.type_mask);
      stream.next(m.lat_int);
      stream.next(m.lon_int);
      stream.next(m.alt);
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vz);
      stream.next(m.afx);
      stream.next(m.afy);
      stream.next(m.afz);
      stream.next(m.yaw);
      stream.next(m.yaw_rate);
      stream.next(m.origin_system_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPositionTargetGlobalINT_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_mavlink_proxy::SetPositionTargetGlobalINT_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_boot_ms: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_boot_ms);
    s << indent << "target_system: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_system);
    s << indent << "target_component: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_component);
    s << indent << "coordinate_frame: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.coordinate_frame);
    s << indent << "type_mask: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.type_mask);
    s << indent << "lat_int: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lat_int);
    s << indent << "lon_int: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lon_int);
    s << indent << "alt: ";
    Printer<float>::stream(s, indent + "  ", v.alt);
    s << indent << "vx: ";
    Printer<float>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<float>::stream(s, indent + "  ", v.vy);
    s << indent << "vz: ";
    Printer<float>::stream(s, indent + "  ", v.vz);
    s << indent << "afx: ";
    Printer<float>::stream(s, indent + "  ", v.afx);
    s << indent << "afy: ";
    Printer<float>::stream(s, indent + "  ", v.afy);
    s << indent << "afz: ";
    Printer<float>::stream(s, indent + "  ", v.afz);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "yaw_rate: ";
    Printer<float>::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "origin_system_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.origin_system_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_MAVLINK_PROXY_MESSAGE_SETPOSITIONTARGETGLOBALINT_H