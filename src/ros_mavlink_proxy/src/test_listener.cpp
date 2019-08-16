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

#include <geometry_msgs/AccelWithCovarianceStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/TwistWithCovarianceStamped.h>
#include <geometry_msgs/TransformStamped.h>


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

  // end program here
  exit(0);

}


void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}

void publish_new_messages(Autopilot_Interface& autopilot_interface)
{
  Mavlink_Messages current_msg = autopilot_interface.current_messages;
  static Time_Stamps last_time_stamps = current_msg.time_stamps;

  if(current_msg.time_stamps.attitude != last_time_stamps.attitude){

  }


}

void altitude_callback(const ros_mavlink_proxy::Altitude::ConstPtr& msg, int* a)
{
  *a = msg->time_usec;
  //int len = autopilot_interface.write_message(msg);
}

void set_position_target_local_NED_callback(const ros_mavlink_proxy::SetPositionTargetLocalNED::ConstPtr& msg, Autopilot_Interface& autopilot_interface)
{
  mavlink_set_position_target_local_ned_t sp;

  printf("listener received! yaw_rate:%f\n",(double)msg->yaw_rate);

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

  return;
}
//void plainCallback()


/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line. For programmatic
   * remappings you can use a different version of init() which takes remappings
   * directly, but for most command-line programs, passing argc and argv is the easiest
   * way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv, "ros_mav_sender");


  ros::NodeHandle from_nh("~from");
  ros::NodeHandle to_nh("/");



  ros::Publisher attitude_pub = to_nh.advertise<ros_mavlink_proxy::Attitude>("attitude", 100);
  ros::Publisher altitude_pub = to_nh.advertise<ros_mavlink_proxy::Altitude>("altitude", 100);
  ros::Publisher command_long_pub = to_nh.advertise<ros_mavlink_proxy::CommandLong>("command_long", 100);
  ros::Publisher heartbeat_pub = to_nh.advertise<ros_mavlink_proxy::Heartbeat>("heartbeat", 100);
  ros::Publisher highres_IMU_pub = to_nh.advertise<ros_mavlink_proxy::HighresIMU>("highres_IMU", 100);
  ros::Publisher global_position_INT_pub = to_nh.advertise<ros_mavlink_proxy::GlobalPositionINT>("global_position_INT", 100);
  ros::Publisher local_position_NED_pub = to_nh.advertise<ros_mavlink_proxy::LocalPositionNED>("local_position_NED", 100);
  ros::Publisher set_position_target_global_INT_pub = to_nh.advertise<ros_mavlink_proxy::SetPositionTargetGlobalINT>("set_position_target_global_INT", 100);
  ros::Publisher set_position_target_local_NED_pub = to_nh.advertise<ros_mavlink_proxy::SetPositionTargetLocalNED>("set_position_target_local_NED", 100);



  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */

//    if(count % 10 == 1)
//    {
//      ros_mavlink_proxy::Attitude msg0;
//      attitude_pub.publish(msg0);
//    }

//    if(count % 10 == 2)
//    {
//    ros_mavlink_proxy::Altitude msg1;
//    altitude_pub.publish(msg1);
//    }

//    if(count % 10 == 3)
//    {
//    ros_mavlink_proxy::CommandLong msg2;
//    command_long_pub.publish(msg2);
//    }

//    if(count % 10 == 4)
//    {
//    ros_mavlink_proxy::Heartbeat msg3;
//    heartbeat_pub.publish(msg3);
//    }

//    if(count % 10 == 5)
//    {
//    ros_mavlink_proxy::HighresIMU msg4;
//    highres_IMU_pub.publish(msg4);
//    }

//    if(count % 10 == 6)
//    {
//    ros_mavlink_proxy::GlobalPositionINT msg5;
//    global_position_INT_pub.publish(msg5);
//    }

    if(count % 10 == 7)
    {
      ros_mavlink_proxy::LocalPositionNED msg6;
      msg6.time_boot_ms = 12;
      msg6.x = 0;
      msg6.y = 0;
      msg6.z = 0;
      msg6.vx = 0.005;
      msg6.vy = 0;
      msg6.vz = 0;
      local_position_NED_pub.publish(msg6);
    }

//    if(count % 10 == 8)
//    {
//    ros_mavlink_proxy::SetPositionTargetGlobalINT msg7;
//    set_position_target_global_INT_pub.publish(msg7);
//    }

//    if(count % 10 == 9)
//    {
//    ros_mavlink_proxy::SetPositionTargetLocalNED msg8;
//    set_position_target_local_NED_pub.publish(msg8);
//    }

    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }


  return 0;
}
