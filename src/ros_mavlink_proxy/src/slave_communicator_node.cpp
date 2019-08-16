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

//这个节点的所有程序都在这一个单文件里

static struct flag_collection_
{
  flag_collection_():
    flag_msg_received_for_command_long(false),
    flag_msg_received_for_global_position_INT(false),
    flag_msg_received_for_set_position_target_global_INT(false),
    flag_msg_received_for_set_position_target_local_NED(false)
  {}
  bool flag_msg_received_for_command_long;
  bool flag_msg_received_for_global_position_INT;
  bool flag_msg_received_for_set_position_target_global_INT;
  bool flag_msg_received_for_set_position_target_local_NED;
} flag_collection;

void command_long_callback(
    const ros_mavlink_proxy::CommandLong::ConstPtr& msg,
    ros_mavlink_proxy::CommandLong& recv_msg)
{
  recv_msg = *msg;
  flag_collection.flag_msg_received_for_command_long = true;
}

void global_position_INT_callback(
    const ros_mavlink_proxy::GlobalPositionINT::ConstPtr& msg,
    ros_mavlink_proxy::GlobalPositionINT& recv_msg)
{
  recv_msg = *msg;
  flag_collection.flag_msg_received_for_global_position_INT = true;
}

void set_position_target_global_INT_callback(
    const ros_mavlink_proxy::SetPositionTargetGlobalINT::ConstPtr& msg,
    ros_mavlink_proxy::SetPositionTargetGlobalINT& recv_msg)
{
  recv_msg = *msg;
  flag_collection.flag_msg_received_for_set_position_target_global_INT = true;
}

void set_position_target_local_NED_callback(
    const ros_mavlink_proxy::SetPositionTargetLocalNED::ConstPtr& msg,
    ros_mavlink_proxy::SetPositionTargetLocalNED& recv_msg)
{
  recv_msg = *msg;
  flag_collection.flag_msg_received_for_set_position_target_local_NED = true;
}

#define SYSTEM_ID_OF_MINE 3
#define SYSTEM_ID_OF_MASTER 1
#define SYSTEM_ID_OF_SLAVE_A 3
#define SYSTEM_ID_OF_SLAVE_B 4
#define CMD_REQUEST_FOR_GLOBAL_POSITION 888
#define CMD_REQUEST_FOR_LOCAL_POSITION 889
#define CMD_REPLY_FOR_EMPTY_BUFFER 999

int main(int argc, char **argv)
{
  uint8_t system_id_of_mine = SYSTEM_ID_OF_MINE;
  if(argc == 2)
    system_id_of_mine = (uint8_t)atoi(argv[1]);

  ros::init(argc, argv, "master_communicator_node");
  ros::NodeHandle from_nh("~from_proxy");
  ros::NodeHandle to_nh("~to_proxy");

  ros_mavlink_proxy::CommandLong command_long_msg;
  ros_mavlink_proxy::GlobalPositionINT global_position_INT_msg;
  ros_mavlink_proxy::SetPositionTargetGlobalINT set_position_target_global_INT_msg;
  ros_mavlink_proxy::SetPositionTargetLocalNED set_position_target_local_NED_msg;

  ros::Subscriber command_long_sub = from_nh.subscribe<ros_mavlink_proxy::CommandLong>(
        "command_long", 100, boost::bind(&command_long_callback, _1, command_long_msg));
  ros::Subscriber global_position_INT_sub = from_nh.subscribe<ros_mavlink_proxy::GlobalPositionINT>(
        "global_position_INT", 100, boost::bind(&global_position_INT_callback, _1, global_position_INT_msg));
  ros::Subscriber set_position_target_global_INT_sub = to_nh.subscribe<ros_mavlink_proxy::SetPositionTargetGlobalINT>(
        "set_position_target_global_INT", 100, boost::bind(&set_position_target_global_INT_callback, _1, set_position_target_global_INT_msg));
  ros::Subscriber set_position_target_local_NED_sub = to_nh.subscribe<ros_mavlink_proxy::SetPositionTargetLocalNED>(
        "set_position_target_local_NED", 100, boost::bind(&set_position_target_local_NED_callback, _1, set_position_target_local_NED_msg));

  ros::Publisher command_long_pub = to_nh.advertise<ros_mavlink_proxy::CommandLong>("command_long", 100);
  ros::Publisher global_position_INT_pub = to_nh.advertise<ros_mavlink_proxy::GlobalPositionINT>("global_position_INT", 100);
  ros::Publisher set_position_target_global_INT_pub = to_nh.advertise<ros_mavlink_proxy::SetPositionTargetGlobalINT>("set_position_target_global_INT", 100);
  ros::Publisher set_position_target_local_NED_pub = to_nh.advertise<ros_mavlink_proxy::SetPositionTargetLocalNED>("set_position_target_local_NED", 100);

  ros::Rate loop_rate(1000);
  while (ros::ok())
  {
    // valid request
    if(flag_collection.flag_msg_received_for_command_long == true
       && command_long_msg.command == CMD_REQUEST_FOR_GLOBAL_POSITION
       && command_long_msg.target_system == system_id_of_mine)
    {
      // a massage in the buffer
      if(flag_collection.flag_msg_received_for_global_position_INT == true)
      {
        flag_collection.flag_msg_received_for_global_position_INT = false;
        global_position_INT_pub.publish(global_position_INT_msg);
      }
      // buffer is empty
      else
      {
        command_long_msg.command = CMD_REPLY_FOR_EMPTY_BUFFER;
        command_long_msg.target_system = SYSTEM_ID_OF_MASTER;
        command_long_msg.origin_system_id = system_id_of_mine;
        command_long_pub.publish(command_long_msg);
      }
    }

    // send the set_position_target which has the right system_id
    if(flag_collection.flag_msg_received_for_set_position_target_global_INT == true
       && set_position_target_global_INT_msg.target_system == system_id_of_mine)
    {
      flag_collection.flag_msg_received_for_set_position_target_global_INT = false;
      set_position_target_global_INT_pub.publish(set_position_target_global_INT_msg);
    }
    else if(flag_collection.flag_msg_received_for_set_position_target_local_NED == true
            && set_position_target_local_NED_msg.target_system == system_id_of_mine)
    {
      flag_collection.flag_msg_received_for_set_position_target_local_NED = false;
      set_position_target_local_NED_pub.publish(set_position_target_local_NED_msg);
    }

    ros::spinOnce();
    loop_rate.sleep();
  }


}
