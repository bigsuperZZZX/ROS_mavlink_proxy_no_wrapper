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

typedef enum State_Machine_
{
  IDLE = 0,
  SEND_REQUEST_TO_SLAVE_A,
  WAITING_FOR_MESSAGE_FROM_SLAVE_A,
  SEND_REQUEST_TO_SLAVE_B,
  WAITING_FOR_MESSAGE_FROM_SLAVE_B,
  CONTINUOUSLY_SENDING
}State_Machine;

#define SYSTEM_ID_OF_MINE 1
#define SYSTEM_ID_OF_MASTER 1
#define SYSTEM_ID_OF_SLAVE_A 3
#define SYSTEM_ID_OF_SLAVE_B 4
#define CMD_REQUEST_FOR_GLOBAL_POSITION 888
#define CMD_REQUEST_FOR_LOCAL_POSITION 889
#define CMD_REPLY_FOR_EMPTY_BUFFER 999

int main(int argc, char **argv)
{

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

  State_Machine state_machine = IDLE;

  ros::Rate loop_rate(1000);
  ros::Time time_start_waiting = ros::Time::now();
  while (ros::ok())
  {
    switch(state_machine)
    {

      case IDLE :
      {
        if(flag_collection.flag_msg_received_for_set_position_target_global_INT == true){
          state_machine = CONTINUOUSLY_SENDING;
        }
        else{
          state_machine = SEND_REQUEST_TO_SLAVE_A;
        }
        break;
      }

      case SEND_REQUEST_TO_SLAVE_A :
      {
        ros_mavlink_proxy::CommandLong msg;
        msg.target_system = SYSTEM_ID_OF_SLAVE_A;  //system id of SLAVE A
        msg.target_component = 0;
        msg.command = CMD_REQUEST_FOR_GLOBAL_POSITION;
        msg.confirmation = 1;
        msg.param1 = msg.param2 = msg.param3 = msg.param4 = msg.param5 = msg.param6 = msg.param7 = 0;
        msg.origin_system_id = 1;
        command_long_pub.publish(msg);

        state_machine = WAITING_FOR_MESSAGE_FROM_SLAVE_A;
        time_start_waiting = ros::Time::now();
        break;
      }

      case WAITING_FOR_MESSAGE_FROM_SLAVE_A :
      {
        // received successfuly
        if(flag_collection.flag_msg_received_for_global_position_INT == true
           && global_position_INT_msg.origin_system_id == SYSTEM_ID_OF_SLAVE_A)
        {
          flag_collection.flag_msg_received_for_global_position_INT = false;
          global_position_INT_pub.publish(global_position_INT_msg);
          state_machine = SEND_REQUEST_TO_SLAVE_B;
        }
        // receive empty buffer command
        if(flag_collection.flag_msg_received_for_command_long == true
           && command_long_msg.origin_system_id == SYSTEM_ID_OF_SLAVE_A
           && command_long_msg.command == CMD_REPLY_FOR_EMPTY_BUFFER)
        {
          flag_collection.flag_msg_received_for_command_long = false;
          state_machine = SEND_REQUEST_TO_SLAVE_B;
          printf("buffer empty of SLAVE_A\n");
        }
        // timeout
        ros::Duration time_elapsed = ros::Time::now() - time_start_waiting;
        if(time_elapsed.sec+((float)time_elapsed.nsec/1000000000.0f) > 1.5f) //abandon
        {
          state_machine = SEND_REQUEST_TO_SLAVE_B;
          printf("receive from SLAVE_A timeout\n");
        }
        break;
      }

      case SEND_REQUEST_TO_SLAVE_B :
      {
        ros_mavlink_proxy::CommandLong msg;
        msg.target_system = SYSTEM_ID_OF_SLAVE_B;  //system id of SLAVE B
        msg.target_component = 0;
        msg.command = CMD_REQUEST_FOR_GLOBAL_POSITION;
        msg.confirmation = 1;
        msg.param1 = msg.param2 = msg.param3 = msg.param4 = msg.param5 = msg.param6 = msg.param7 = 0;
        msg.origin_system_id = 1;
        command_long_pub.publish(msg);

        state_machine = WAITING_FOR_MESSAGE_FROM_SLAVE_B;
        time_start_waiting = ros::Time::now();
        break;
      }

      case WAITING_FOR_MESSAGE_FROM_SLAVE_B :
      {
        // received successfuly
        if(flag_collection.flag_msg_received_for_global_position_INT == true
           && global_position_INT_msg.origin_system_id == SYSTEM_ID_OF_SLAVE_B)
        {
          flag_collection.flag_msg_received_for_global_position_INT = false;
          global_position_INT_pub.publish(global_position_INT_msg);
          state_machine = IDLE;
        }
        // receive empty buffer command
        if(flag_collection.flag_msg_received_for_command_long == true
           && command_long_msg.origin_system_id == SYSTEM_ID_OF_SLAVE_B
           && command_long_msg.command == CMD_REPLY_FOR_EMPTY_BUFFER)
        {
          flag_collection.flag_msg_received_for_command_long = false;
          state_machine = IDLE;
          printf("buffer empty of SLAVE_B\n");
        }
        // timeout
        ros::Duration time_elapsed = ros::Time::now() - time_start_waiting;
        if(time_elapsed.sec+((float)time_elapsed.nsec/1000000000.0f) > 1.5f) //abandon
        {
          state_machine = IDLE;
          printf("receive from SLAVE_B timeout\n");
        }
        break;
      }

      case CONTINUOUSLY_SENDING :
      {
        if(flag_collection.flag_msg_received_for_set_position_target_global_INT == true)
        {
          flag_collection.flag_msg_received_for_set_position_target_global_INT = false;
          set_position_target_global_INT_pub.publish(set_position_target_global_INT_msg);
          time_start_waiting = ros::Time::now();
        }
        else if (flag_collection.flag_msg_received_for_set_position_target_local_NED == true)
        {
          flag_collection.flag_msg_received_for_set_position_target_local_NED = false;
          set_position_target_local_NED_pub.publish(set_position_target_local_NED_msg);
          time_start_waiting = ros::Time::now();
        }
        ros::Duration time_elapsed = ros::Time::now() - time_start_waiting;
        if(time_elapsed.sec+((float)time_elapsed.nsec/1000000000.0f) > 0.5f) //timeout
        {
          state_machine = IDLE;
        }
        break;
      }
    }

    ros::spinOnce();
    loop_rate.sleep();
  }


}
