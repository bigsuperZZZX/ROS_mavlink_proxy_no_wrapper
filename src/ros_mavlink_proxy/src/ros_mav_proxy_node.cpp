#include "ros/ros.h"
#include "std_msgs/String.h"

#include <eigen_conversions/eigen_msg.h>

#include <geometry_msgs/PoseStamped.h>

#include <ros_mavlink_proxy/Altitude.h>
#include <ros_mavlink_proxy/Attitude.h>
#include <ros_mavlink_proxy/CommandLong.h>
#include <ros_mavlink_proxy/GlobalPositionINT.h>
#include <ros_mavlink_proxy/Heartbeat.h>
#include <ros_mavlink_proxy/HighresIMU.h>
#include <ros_mavlink_proxy/LocalPositionNED.h>
#include <ros_mavlink_proxy/SetPositionTargetGlobalINT.h>
#include <ros_mavlink_proxy/SetPositionTargetLocalNED.h>

#include "serial_port.h"
#include "autopilot_interface.h"
#include "common/common.h"

#include <sstream>
#include <stdio.h>
#include <boost/bind.hpp>

// quit handler
Autopilot_Interface *autopilot_interface_quit;
Serial_Port *serial_port_quit;
void quit_handler( int sig );

// ------------------------------------------------------------------------------
//   Quit Signal Handler
// ------------------------------------------------------------------------------
// this function is called when you press Ctrl-C
void
quit_handler( int sig )
{
  printf("\n");
  printf("TERMINATING AT USER REQUEST\n");
  printf("\n");

  // autopilot interface
  try {
    autopilot_interface_quit->handle_quit(sig);
  }
  catch (int error){}

  // serial port
  try {
    serial_port_quit->handle_quit(sig);
  }
  catch (int error){}
  exit(0);

}


void attitude_callback(const ros_mavlink_proxy::Attitude::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_attitude_t sp;

  sp.time_boot_ms = msg->time_boot_ms;
  sp.roll = msg->roll;
  sp.pitch = msg->pitch;
  sp.yaw = msg->yaw;
  sp.rollspeed	 = msg->rollspeed	;
  sp.pitchspeed = msg->pitchspeed;
  sp.yawspeed = msg->yawspeed;

  mavlink_message_t message;
  mavlink_msg_attitude_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send attitude \n");
  else {
    printf("send attitude to serial\n");
  }

  return;
}

void altitude_callback(const ros_mavlink_proxy::Altitude::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_altitude_t sp;

  printf("talker received! altitude %f\n",(double)msg->altitude_amsl);

  sp.time_usec = msg->time_usec;
  sp.altitude_monotonic = msg->altitude_monotonic;
  sp.altitude_amsl = msg->altitude_amsl;
  sp.altitude_local = msg->altitude_local;
  sp.altitude_relative = msg->altitude_relative;
  sp.altitude_terrain = msg->altitude_terrain;
  sp.bottom_clearance = msg->bottom_clearance;

  mavlink_message_t message;
  mavlink_msg_altitude_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send altitude \n");
  else {
    printf("send altitude to serial\n");
  }

  return;
}

void command_long_callback(const ros_mavlink_proxy::CommandLong::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_command_long_t sp;

  sp.target_system = msg->target_system;
  sp.target_component = msg->target_component;
  sp.command = msg->command;
  sp.confirmation = msg->confirmation;
  sp.param1 = msg->param1;
  sp.param2 = msg->param2;
  sp.param3 = msg->param3;
  sp.param4 = msg->param4;
  sp.param5 = msg->param5;
  sp.param6 = msg->param6;
  sp.param7 = msg->param7;

  mavlink_message_t message;
  mavlink_msg_command_long_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send command_long \n");
  else {
    printf("send command_long to serial\n");
  }

  return;
}

void heartbeat_callback(const ros_mavlink_proxy::Heartbeat::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_heartbeat_t sp;

  sp.type = msg->type;
  sp.autopilot = msg->autopilot;
  sp.base_mode = msg->base_mode;
  sp.custom_mode = msg->custom_mode;
  sp.system_status = msg->system_status;
  sp.mavlink_version = msg->mavlink_version;

  mavlink_message_t message;
  mavlink_msg_heartbeat_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send heartbeat \n");
  else {
    printf("send heartbeat to serial\n");
  }

  return;
}

void highres_IMU_callback(const ros_mavlink_proxy::HighresIMU::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_highres_imu_t sp;

  sp.time_usec = msg->time_usec;
  sp.xacc = msg->xacc;
  sp.yacc = msg->yacc;
  sp.zacc = msg->zacc;
  sp.xgyro = msg->xgyro;
  sp.ygyro = msg->ygyro;
  sp.zgyro = msg->zgyro;
  sp.xmag = msg->xmag;
  sp.ymag = msg->ymag;
  sp.zmag = msg->zmag;
  sp.abs_pressure = msg->abs_pressure;
  sp.diff_pressure = msg->diff_pressure;
  sp.pressure_alt = msg->pressure_alt;
  sp.temperature = msg->temperature;
  sp.fields_updated = msg->fields_updated;

  mavlink_message_t message;
  mavlink_msg_highres_imu_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send highres_imu \n");
  else {
    printf("send highres_IMU to serial\n");
  }

  return;
}

void global_position_INT_callback(const ros_mavlink_proxy::GlobalPositionINT::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_global_position_int_t sp;

  sp.time_boot_ms = msg->time_boot_ms;
  sp.lat = msg->lat;
  sp.lon = msg->lon;
  sp.alt = msg->alt;
  sp.relative_alt = msg->relative_alt;
  sp.vx = msg->vx;
  sp.vy = msg->vy;
  sp.vz = msg->vz;
  sp.vx = msg->vx;
  sp.vy = msg->vy;
  sp.vz = msg->vz;
  sp.hdg = msg->hdg;

  mavlink_message_t message;
  mavlink_msg_global_position_int_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send global_position_int \n");
  else {
    printf("send global_position_INT to serial\n");
  }

  return;
}

void local_position_NED_callback(const ros_mavlink_proxy::LocalPositionNED::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_local_position_ned_t sp;

  sp.time_boot_ms = msg->time_boot_ms;
  sp.x = msg->x;
  sp.y = msg->y;
  sp.z = msg->z;
  sp.vx = msg->vx;
  sp.vy = msg->vy;
  sp.vz = msg->vz;

  mavlink_message_t message;
  mavlink_msg_local_position_ned_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send local_position_ned \n");
  else {
    printf("send local_position_NED to serial\n");
  }

  return;
}

void set_position_target_global_INT_callback(const ros_mavlink_proxy::SetPositionTargetGlobalINT::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_set_position_target_global_int_t sp;

  sp.time_boot_ms = msg->time_boot_ms;
  sp.target_system = msg->target_system;
  sp.target_component = msg->target_component;
  sp.coordinate_frame = msg->coordinate_frame;
  sp.type_mask = msg->type_mask;
  sp.lat_int = msg->lat_int;
  sp.lon_int = msg->lon_int;
  sp.alt = msg->alt;
  sp.vx = msg->vx;
  sp.vy = msg->vy;
  sp.vz = msg->vz;
  sp.afx = msg->afx;
  sp.afy = msg->afy;
  sp.afz = msg->afz;
  sp.yaw = msg->yaw;
  sp.yaw_rate = msg->yaw_rate;

  mavlink_message_t message;
  mavlink_msg_set_position_target_global_int_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send set_position_target_global_int \n");
  else {
    printf("send set_position_target_global_INT to serial\n");
  }

  return;
}

void set_position_target_local_NED_callback(const ros_mavlink_proxy::SetPositionTargetLocalNED::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_set_position_target_local_ned_t sp;

  sp.time_boot_ms = msg->time_boot_ms;
  sp.target_system = msg->target_system;
  sp.target_component = msg->target_component;
  sp.coordinate_frame = msg->coordinate_frame;
  sp.type_mask = msg->type_mask;
  sp.x = msg->x;
  sp.y = msg->y;
  sp.z = msg->z;
  sp.vx = msg->vx;
  sp.vy = msg->vy;
  sp.vz = msg->vz;
  sp.afx = msg->afx;
  sp.afy = msg->afy;
  sp.afz = msg->afz;
  sp.yaw = msg->yaw;
  sp.yaw_rate = msg->yaw_rate;

  mavlink_message_t message;
  mavlink_msg_set_position_target_local_ned_encode(autopilot_interface.system_id, autopilot_interface.component_id, &message, &sp);


  autopilot_interface.writing_status = true;
  int len = autopilot_interface.write_message(message);
  autopilot_interface.writing_status = false;

  if ( len <= 0 )
    fprintf(stderr,"WARNING: could not send POSITION_TARGET_LOCAL_NED \n");
  else {
    printf("send set_position_target_local_NED to serial\n");
  }

  return;
}


typedef struct Args_
{
  Autopilot_Interface* autopilot_interface;
  ros::NodeHandle* from_nh;
} Args;

void *ros_publish_thread(void *arg)
{
  Args *args = (Args *) arg;
  Autopilot_Interface *autopilot_interface = args->autopilot_interface;

  ros::NodeHandle* from_nh = args->from_nh;
  ros::Publisher attitude_pub = from_nh->advertise<ros_mavlink_proxy::Attitude>("attitude", 100);
  ros::Publisher altitude_pub = from_nh->advertise<ros_mavlink_proxy::Altitude>("altitude", 100);
  ros::Publisher command_long_pub = from_nh->advertise<ros_mavlink_proxy::CommandLong>("command_long", 100);
  ros::Publisher heartbeat_pub = from_nh->advertise<ros_mavlink_proxy::Heartbeat>("heartbeat", 100);
  ros::Publisher highres_IMU_pub = from_nh->advertise<ros_mavlink_proxy::HighresIMU>("highres_IMU", 100);
  ros::Publisher global_position_INT_pub = from_nh->advertise<ros_mavlink_proxy::GlobalPositionINT>("global_position_INT", 100);
  ros::Publisher local_position_NED_pub = from_nh->advertise<ros_mavlink_proxy::LocalPositionNED>("local_position_NED", 100);
  ros::Publisher set_position_target_global_INT_pub = from_nh->advertise<ros_mavlink_proxy::SetPositionTargetGlobalINT>("set_position_target_global_INT", 100);
  ros::Publisher set_position_target_local_NED_pub = from_nh->advertise<ros_mavlink_proxy::SetPositionTargetLocalNED>("set_position_target_local_NED", 100);

  while(!autopilot_interface->get_time_to_exit())
  {
    if(autopilot_interface->current_messages.flag_new_msg.attitude == true)
    {
      ros_mavlink_proxy::Attitude msg;
      msg.time_boot_ms = autopilot_interface->current_messages.attitude.time_boot_ms;
      msg.roll = autopilot_interface->current_messages.attitude.roll;
      msg.pitch = autopilot_interface->current_messages.attitude.pitch;
      msg.yaw = autopilot_interface->current_messages.attitude.yaw;
      msg.rollspeed	 = autopilot_interface->current_messages.attitude.rollspeed	;
      msg.pitchspeed = autopilot_interface->current_messages.attitude.pitchspeed;
      msg.yawspeed = autopilot_interface->current_messages.attitude.yawspeed;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.attitude_origin_id;

      attitude_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.attitude = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.altitude == true)
    {
      ros_mavlink_proxy::Altitude msg;
      msg.time_usec = autopilot_interface->current_messages.altitude.time_usec;
      msg.altitude_monotonic = autopilot_interface->current_messages.altitude.altitude_monotonic;
      msg.altitude_amsl = autopilot_interface->current_messages.altitude.altitude_amsl;
      msg.altitude_local = autopilot_interface->current_messages.altitude.altitude_local;
      msg.altitude_relative = autopilot_interface->current_messages.altitude.altitude_relative;
      msg.altitude_terrain = autopilot_interface->current_messages.altitude.altitude_terrain;
      msg.bottom_clearance = autopilot_interface->current_messages.altitude.bottom_clearance;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.altitude_origin_id;

      altitude_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.altitude = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.command_long == true)
    {
      ros_mavlink_proxy::CommandLong msg;
      msg.target_system = autopilot_interface->current_messages.command_long.target_system;
      msg.target_component = autopilot_interface->current_messages.command_long.target_component;
      msg.command = autopilot_interface->current_messages.command_long.command;
      msg.confirmation = autopilot_interface->current_messages.command_long.confirmation;
      msg.param1 = autopilot_interface->current_messages.command_long.param1;
      msg.param2 = autopilot_interface->current_messages.command_long.param2;
      msg.param3 = autopilot_interface->current_messages.command_long.param3;
      msg.param4 = autopilot_interface->current_messages.command_long.param4;
      msg.param5 = autopilot_interface->current_messages.command_long.param5;
      msg.param6 = autopilot_interface->current_messages.command_long.param6;
      msg.param7 = autopilot_interface->current_messages.command_long.param7;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.command_long_origin_id;

      command_long_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.command_long = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.heartbeat == true)
    {
      ros_mavlink_proxy::Heartbeat msg;
      msg.type = autopilot_interface->current_messages.heartbeat.type;
      msg.autopilot = autopilot_interface->current_messages.heartbeat.autopilot;
      msg.base_mode = autopilot_interface->current_messages.heartbeat.base_mode;
      msg.custom_mode = autopilot_interface->current_messages.heartbeat.custom_mode;
      msg.system_status = autopilot_interface->current_messages.heartbeat.system_status;
      msg.mavlink_version = autopilot_interface->current_messages.heartbeat.mavlink_version;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.heartbeat_origin_id;

      heartbeat_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.heartbeat = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.highres_imu == true)
    {
      ros_mavlink_proxy::HighresIMU msg;
      msg.time_usec = autopilot_interface->current_messages.highres_imu.time_usec;
      msg.xacc = autopilot_interface->current_messages.highres_imu.xacc;
      msg.yacc = autopilot_interface->current_messages.highres_imu.yacc;
      msg.zacc = autopilot_interface->current_messages.highres_imu.zacc;
      msg.xgyro = autopilot_interface->current_messages.highres_imu.xgyro;
      msg.ygyro = autopilot_interface->current_messages.highres_imu.ygyro;
      msg.zgyro = autopilot_interface->current_messages.highres_imu.zgyro;
      msg.xmag = autopilot_interface->current_messages.highres_imu.xmag;
      msg.ymag = autopilot_interface->current_messages.highres_imu.ymag;
      msg.zmag = autopilot_interface->current_messages.highres_imu.zmag;
      msg.abs_pressure = autopilot_interface->current_messages.highres_imu.abs_pressure;
      msg.diff_pressure = autopilot_interface->current_messages.highres_imu.diff_pressure;
      msg.pressure_alt = autopilot_interface->current_messages.highres_imu.pressure_alt;
      msg.temperature = autopilot_interface->current_messages.highres_imu.temperature;
      msg.fields_updated = autopilot_interface->current_messages.highres_imu.fields_updated;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.highres_imu_origin_id;

      highres_IMU_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.highres_imu = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.global_position_int == true)
    {
      ros_mavlink_proxy::GlobalPositionINT msg;
      msg.time_boot_ms = autopilot_interface->current_messages.global_position_int.time_boot_ms;
      msg.lat = autopilot_interface->current_messages.global_position_int.lat;
      msg.lon = autopilot_interface->current_messages.global_position_int.lon;
      msg.alt = autopilot_interface->current_messages.global_position_int.alt;
      msg.relative_alt = autopilot_interface->current_messages.global_position_int.relative_alt;
      msg.vx = autopilot_interface->current_messages.global_position_int.vx;
      msg.vy = autopilot_interface->current_messages.global_position_int.vy;
      msg.vz = autopilot_interface->current_messages.global_position_int.vz;
      msg.vx = autopilot_interface->current_messages.global_position_int.vx;
      msg.vy = autopilot_interface->current_messages.global_position_int.vy;
      msg.vz = autopilot_interface->current_messages.global_position_int.vz;
      msg.hdg = autopilot_interface->current_messages.global_position_int.hdg;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.global_position_int_origin_id;

      global_position_INT_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.global_position_int = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.local_position_ned == true)
    {
      ros_mavlink_proxy::LocalPositionNED msg;
      msg.time_boot_ms = autopilot_interface->current_messages.local_position_ned.time_boot_ms;
      msg.x = autopilot_interface->current_messages.local_position_ned.x;
      msg.y = autopilot_interface->current_messages.local_position_ned.y;
      msg.z = autopilot_interface->current_messages.local_position_ned.z;
      msg.vx = autopilot_interface->current_messages.local_position_ned.vx;
      msg.vy = autopilot_interface->current_messages.local_position_ned.vy;
      msg.vz = autopilot_interface->current_messages.local_position_ned.vz;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.local_position_ned_origin_id;

      local_position_NED_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.local_position_ned = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.set_position_target_global_int == true)
    {
      ros_mavlink_proxy::SetPositionTargetGlobalINT msg;
      msg.time_boot_ms = autopilot_interface->current_messages.set_position_target_global_int.time_boot_ms;
      msg.target_system = autopilot_interface->current_messages.set_position_target_global_int.target_system;
      msg.target_component = autopilot_interface->current_messages.set_position_target_global_int.target_component;
      msg.coordinate_frame = autopilot_interface->current_messages.set_position_target_global_int.coordinate_frame;
      msg.type_mask = autopilot_interface->current_messages.set_position_target_global_int.type_mask;
      msg.lat_int = autopilot_interface->current_messages.set_position_target_global_int.lat_int;
      msg.lon_int = autopilot_interface->current_messages.set_position_target_global_int.lon_int;
      msg.alt = autopilot_interface->current_messages.set_position_target_global_int.alt;
      msg.vx = autopilot_interface->current_messages.set_position_target_global_int.vx;
      msg.vy = autopilot_interface->current_messages.set_position_target_global_int.vy;
      msg.vz = autopilot_interface->current_messages.set_position_target_global_int.vz;
      msg.afx = autopilot_interface->current_messages.set_position_target_global_int.afx;
      msg.afy = autopilot_interface->current_messages.set_position_target_global_int.afy;
      msg.afz = autopilot_interface->current_messages.set_position_target_global_int.afz;
      msg.yaw = autopilot_interface->current_messages.set_position_target_global_int.yaw;
      msg.yaw_rate = autopilot_interface->current_messages.set_position_target_global_int.yaw_rate;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.set_position_target_global_int_origin_id;

      set_position_target_global_INT_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.set_position_target_global_int = false;
    }
    if(autopilot_interface->current_messages.flag_new_msg.set_position_target_local_ned == true)
    {
      ros_mavlink_proxy::SetPositionTargetLocalNED msg;
      msg.time_boot_ms = autopilot_interface->current_messages.set_position_target_local_ned.time_boot_ms;
      msg.target_system = autopilot_interface->current_messages.set_position_target_local_ned.target_system;
      msg.target_component = autopilot_interface->current_messages.set_position_target_local_ned.target_component;
      msg.coordinate_frame = autopilot_interface->current_messages.set_position_target_local_ned.coordinate_frame;
      msg.type_mask = autopilot_interface->current_messages.set_position_target_local_ned.type_mask;
      msg.x = autopilot_interface->current_messages.set_position_target_local_ned.x;
      msg.y = autopilot_interface->current_messages.set_position_target_local_ned.y;
      msg.z = autopilot_interface->current_messages.set_position_target_local_ned.z;
      msg.vx = autopilot_interface->current_messages.set_position_target_local_ned.vx;
      msg.vy = autopilot_interface->current_messages.set_position_target_local_ned.vy;
      msg.vz = autopilot_interface->current_messages.set_position_target_local_ned.vz;
      msg.afx = autopilot_interface->current_messages.set_position_target_local_ned.afx;
      msg.afy = autopilot_interface->current_messages.set_position_target_local_ned.afy;
      msg.afz = autopilot_interface->current_messages.set_position_target_local_ned.afz;
      msg.yaw = autopilot_interface->current_messages.set_position_target_local_ned.yaw;
      msg.yaw_rate = autopilot_interface->current_messages.set_position_target_local_ned.yaw_rate;
      msg.origin_system_id = autopilot_interface->current_messages.system_id_collection.set_position_target_local_ned_origin_id;

      set_position_target_local_NED_pub.publish(msg);
      autopilot_interface->current_messages.flag_new_msg.set_position_target_local_ned = false;
    }
    usleep(100);
  }

  return ((void *)0);
}


/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{


  ros::init(argc, argv, "ros_mav_proxy");
  ros::NodeHandle from_nh("~from_peripheral");
  ros::NodeHandle to_nh("~to_peripheral");
  ros::NodeHandle priv_nh("~");

  /**************************************************/
  //Initialize the peripherals
  /**************************************************/
  std::string uart_name;
  int baudrate = 115200;
  if(argc == 3){
    uart_name = argv[1];
    baudrate = atoi(argv[2]);
  }
  else{
    priv_nh.param<std::string>("uart_name", uart_name, "/dev/ttyUSB2");
    priv_nh.param("baudrate", baudrate, 115200);
  }
  Serial_Port serial_port(uart_name.c_str(),baudrate);
  Autopilot_Interface autopilot_interface(&serial_port);

  priv_nh.param("system_id", autopilot_interface.system_id, 1);
  priv_nh.param("component_id", autopilot_interface.component_id, 1);

  printf("%d %d\n",autopilot_interface.system_id,autopilot_interface.component_id);

  serial_port_quit         = &serial_port;
  autopilot_interface_quit = &autopilot_interface;
  signal(SIGINT,quit_handler);


  /**************************************************/
  //ros subscribe topics
  /**************************************************/
  ros::Subscriber attitude_sub = to_nh.subscribe<ros_mavlink_proxy::Attitude>(
        "attitude", 100, boost::bind(&attitude_callback, _1, autopilot_interface));
  ros::Subscriber altitude_sub = to_nh.subscribe<ros_mavlink_proxy::Altitude>(
        "altitude", 100, boost::bind(&altitude_callback, _1, autopilot_interface));
  ros::Subscriber command_long_sub = to_nh.subscribe<ros_mavlink_proxy::CommandLong>(
        "command_long", 100, boost::bind(&command_long_callback, _1, autopilot_interface));
  ros::Subscriber heartbeat_sub = to_nh.subscribe<ros_mavlink_proxy::Heartbeat>(
        "heartbeat", 100, boost::bind(&heartbeat_callback, _1, autopilot_interface));
  ros::Subscriber highres_IMU_sub = to_nh.subscribe<ros_mavlink_proxy::HighresIMU>(
        "highres_IMU", 100, boost::bind(&highres_IMU_callback, _1, autopilot_interface));
  ros::Subscriber global_position_INT_sub = to_nh.subscribe<ros_mavlink_proxy::GlobalPositionINT>(
        "global_position_INT", 100, boost::bind(&global_position_INT_callback, _1, autopilot_interface));
  ros::Subscriber local_position_NED_sub = to_nh.subscribe<ros_mavlink_proxy::LocalPositionNED>(
        "local_position_NED", 100, boost::bind(&local_position_NED_callback, _1, autopilot_interface));
  ros::Subscriber set_position_target_global_INT_sub = to_nh.subscribe<ros_mavlink_proxy::SetPositionTargetGlobalINT>(
        "set_position_target_global_INT", 100, boost::bind(&set_position_target_global_INT_callback, _1, autopilot_interface));
  ros::Subscriber set_position_target_local_NED_sub = to_nh.subscribe<ros_mavlink_proxy::SetPositionTargetLocalNED>(
        "set_position_target_local_NED", 100, boost::bind(&set_position_target_local_NED_callback, _1, autopilot_interface));

  /**************************************************/
  //finish variable defination, start running
  /**************************************************/
  serial_port.start();
  autopilot_interface.start();
  sleep(1);

  printf("START ROS PUBLISH THREAD...");
  Args args = {&autopilot_interface, &from_nh};
  pthread_t publish_tid;
  int result = pthread_create( &publish_tid, NULL, ros_publish_thread, &(args));
  if ( result ) throw result;
  printf("OK!\n");


  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}
