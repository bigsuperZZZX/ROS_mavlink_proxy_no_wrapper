/****************************************************************************
 *
 *   Copyright (c) 2014 MAVlink Development Team. All rights reserved.
 *   Author: Trent Lukaczyk, <aerialhedgehog@gmail.com>
 *           Jaycee Lock,    <jaycee.lock@gmail.com>
 *           Lorenz Meier,   <lm@inf.ethz.ch>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name PX4 nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/

/**
 * @file autopilot_interface.h
 *
 * @brief Autopilot interface definition
 *
 * Functions for sending and recieving commands to an autopilot via MAVlink
 *
 * @author Trent Lukaczyk, <aerialhedgehog@gmail.com>
 * @author Jaycee Lock,    <jaycee.lock@gmail.com>
 * @author Lorenz Meier,   <lm@inf.ethz.ch>
 *
 */


#ifndef AUTOPILOT_INTERFACE_H_
#define AUTOPILOT_INTERFACE_H_

// ------------------------------------------------------------------------------
//   Includes
// ------------------------------------------------------------------------------

#include "serial_port.h"

#include <signal.h>
#include <time.h>
#include <sys/time.h>

#include <common/mavlink.h>

// ------------------------------------------------------------------------------
//   Defines
// ------------------------------------------------------------------------------

/**
 * Defines for mavlink_set_position_target_local_ned_t.type_mask
 *
 * Bitmask to indicate which dimensions should be ignored by the vehicle
 *
 * a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of
 * the setpoint dimensions should be ignored.
 *
 * If bit 10 is set the floats afx afy afz should be interpreted as force
 * instead of acceleration.
 *
 * Mapping:
 * bit 1: x,
 * bit 2: y,
 * bit 3: z,
 * bit 4: vx,
 * bit 5: vy,
 * bit 6: vz,
 * bit 7: ax,
 * bit 8: ay,
 * bit 9: az,
 * bit 10: is force setpoint,
 * bit 11: yaw,
 * bit 12: yaw rate
 * remaining bits unused
 *
 * Combine bitmasks with bitwise &
 *
 * Example for position and yaw angle:
 * uint16_t type_mask =
 *     MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_POSITION &
 *     MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_YAW_ANGLE;
 */

                                                // bit number  876543210987654321
#define MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_POSITION     0b0000110111111000
#define MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_VELOCITY     0b0000110111000111
#define MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_ACCELERATION 0b0000110000111111
#define MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_FORCE        0b0000111000111111
#define MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_YAW_ANGLE    0b0000100111111111
#define MAVLINK_MSG_SET_POSITION_TARGET_LOCAL_NED_YAW_RATE     0b0000010111111111


const uint8_t cmdl_arm_ID1[44]= {0xFD,0x20,0x00,0x00,0x5B,
                                 0xFF,0x00,0x4C,0x00,0x00,
                                 0x00,0x00,0x80,0x3F,0x00,
                                 0x00,0x00,0x00,0x00,0x00,
                                 0x00,0x00,0x00,0x00,0x00,
                                 0x00,0x00,0x00,0x00,0x00,
                                 0x00,0x00,0x00,0x00,0x00,
                                 0x00,0x00,0x00,0x90,0x01,
                                 0x01,0x01,0x57,0xD0};

const uint8_t cmdl_disarm_ID1[44] = {0xFD,0x20,0x00,0x00,0x71,
                                     0xFF,0x00,0x4C,0x00,0x00,
                                     0x00,0x00,0x00,0x00,0x00,
                                     0x00,0x00,0x00,0x00,0x00,
                                     0x00,0x00,0x00,0x00,0x00,
                                     0x00,0x00,0x00,0x00,0x00,
                                     0x00,0x00,0x00,0x00,0x00,
                                     0x00,0x00,0x00,0x90,0x01,
                                     0x01,0x01,0x97,0x4F};


const mavlink_set_mode_t set_mode_alt_ID1 = {0x00020000, 0x01, 0x41};
const mavlink_set_mode_t set_mode_ob_ID1  = {0x00060000, 0x01, 0x1D};
const mavlink_set_mode_t set_mode_alt_ID2 = {0x00020000, 0x02, 0x41};
const mavlink_set_mode_t set_mode_ob_ID2  = {0x00060000, 0x02, 0x1D};
const mavlink_set_mode_t set_mode_alt_ID3 = {0x00020000, 0x03, 0x41};
const mavlink_set_mode_t set_mode_ob_ID3  = {0x00060000, 0x03, 0x1D};
const mavlink_set_mode_t set_mode_alt_ID4 = {0x00020000, 0x04, 0x41};
const mavlink_set_mode_t set_mode_ob_ID4  = {0x00060000, 0x04, 0x1D};
const mavlink_set_mode_t set_mode_alt_ID5 = {0x00020000, 0x05, 0x41};
const mavlink_set_mode_t set_mode_ob_ID5  = {0x00060000, 0x05, 0x1D};

typedef char zzz;

// ------------------------------------------------------------------------------
//   Prototypes
// ------------------------------------------------------------------------------


// helper functions
uint64_t get_time_usec();
void set_position(float x, float y, float z, mavlink_set_position_target_local_ned_t &sp);
void set_velocity(float vx, float vy, float vz, mavlink_set_position_target_local_ned_t &sp);
void set_acceleration(float ax, float ay, float az, mavlink_set_position_target_local_ned_t &sp);
void set_yaw(float yaw, mavlink_set_position_target_local_ned_t &sp);
void set_yaw_rate(float yaw_rate, mavlink_set_position_target_local_ned_t &sp);

void* start_autopilot_interface_read_thread(void *args);
void* start_autopilot_interface_write_thread(void *args);


// ------------------------------------------------------------------------------
//   Data Structures
// ------------------------------------------------------------------------------

struct Time_Stamps
{
	Time_Stamps()
	{
		reset_timestamps();
	}

	uint64_t heartbeat;
	uint64_t sys_status;
	uint64_t battery_status;
	uint64_t radio_status;
	uint64_t local_position_ned;
	uint64_t global_position_int;
	uint64_t position_target_local_ned;
	uint64_t position_target_global_int;
  uint64_t set_position_target_local_ned;
  uint64_t set_position_target_global_int;
	uint64_t highres_imu;
	uint64_t attitude;
  uint64_t altitude;
  uint64_t command_long;

	void
	reset_timestamps()
	{
		heartbeat = 0;
		sys_status = 0;
		battery_status = 0;
		radio_status = 0;
		local_position_ned = 0;
		global_position_int = 0;
		position_target_local_ned = 0;
		position_target_global_int = 0;
    set_position_target_local_ned = 0;
    set_position_target_global_int = 0;
		highres_imu = 0;
		attitude = 0;
    altitude = 0;
    command_long = 0;
	}

};

//zxzxzxzx
struct Flag_New_Msg
{
  Flag_New_Msg()
  {
    reset_flagnewmsg();
  }

  bool heartbeat;
  bool sys_status;
  bool battery_status;
  bool radio_status;
  bool local_position_ned;
  bool global_position_int;
  bool position_target_local_ned;
  bool position_target_global_int;
  bool set_position_target_local_ned;
  bool set_position_target_global_int;
  bool highres_imu;
  bool attitude;
  bool altitude;
  bool command_long;

  void
  reset_flagnewmsg()
  {
    heartbeat = false;
    sys_status = false;
    battery_status = false;
    radio_status = false;
    local_position_ned = false;
    global_position_int = false;
    position_target_local_ned = false;
    position_target_global_int = false;
    set_position_target_local_ned = false;
    set_position_target_global_int = false;
    highres_imu = false;
    attitude = false;
    altitude = false;
    command_long = false;
  }

};

//zxzxzxzx
struct System_Id_Collection
{
  System_Id_Collection()
  {
    reset();
  }

  uint8_t heartbeat_origin_id;
  uint8_t sys_status_origin_id;
  uint8_t battery_status_origin_id;
  uint8_t radio_status_origin_id;
  uint8_t local_position_ned_origin_id;
  uint8_t global_position_int_origin_id;
  uint8_t position_target_local_ned_origin_id;
  uint8_t position_target_global_int_origin_id;
  uint8_t set_position_target_local_ned_origin_id;
  uint8_t set_position_target_global_int_origin_id;
  uint8_t highres_imu_origin_id;
  uint8_t attitude_origin_id;
  uint8_t altitude_origin_id;
  uint8_t command_long_origin_id;

  uint8_t heartbeat_target_id;
  uint8_t sys_status_target_id;
  uint8_t battery_status_target_id;
  uint8_t radio_status_target_id;
  uint8_t local_position_ned_target_id;
  uint8_t global_position_int_target_id;
  uint8_t position_target_local_ned_target_id;
  uint8_t position_target_global_int_target_id;
  uint8_t set_position_target_local_ned_target_id;
  uint8_t set_position_target_global_int_target_id;
  uint8_t highres_imu_target_id;
  uint8_t attitude_target_id;
  uint8_t altitude_target_id;
  uint8_t command_long_target_id;

  void
  reset()
  {
    heartbeat_origin_id = 0;
    sys_status_origin_id = 0;
    battery_status_origin_id = 0;
    radio_status_origin_id = 0;
    local_position_ned_origin_id = 0;
    global_position_int_origin_id = 0;
    position_target_local_ned_origin_id = 0;
    position_target_global_int_origin_id = 0;
    set_position_target_local_ned_origin_id = 0;
    set_position_target_global_int_origin_id = 0;
    highres_imu_origin_id = 0;
    attitude_origin_id = 0;
    altitude_origin_id = 0;
    command_long_origin_id = 0;

    heartbeat_target_id = 0;
    sys_status_target_id = 0;
    battery_status_target_id = 0;
    radio_status_target_id = 0;
    local_position_ned_target_id = 0;
    global_position_int_target_id = 0;
    position_target_local_ned_target_id = 0;
    position_target_global_int_target_id = 0;
    set_position_target_local_ned_target_id = 0;
    set_position_target_global_int_target_id = 0;
    highres_imu_target_id = 0;
    attitude_target_id = 0;
    altitude_target_id = 0;
    command_long_target_id = 0;
  }

};




// Struct containing information on the MAV we are currently connected to

struct Mavlink_Messages {

  //zxzxzxzx
  uint8_t sysid;
  uint8_t compid;
  uint8_t seq;

	// Heartbeat
  mavlink_heartbeat_t heartbeat;

	// System Status
	mavlink_sys_status_t sys_status;

	// Battery Status
	mavlink_battery_status_t battery_status;

	// Radio Status
	mavlink_radio_status_t radio_status;

	// Local Position
	mavlink_local_position_ned_t local_position_ned;

	// Global Position
	mavlink_global_position_int_t global_position_int;

	// Local Position Target
	mavlink_position_target_local_ned_t position_target_local_ned;

	// Global Position Target
	mavlink_position_target_global_int_t position_target_global_int;

  // Set Local Position Target
  mavlink_set_position_target_local_ned_t set_position_target_local_ned;

  // Set Global Position Target
  mavlink_set_position_target_global_int_t set_position_target_global_int;

	// HiRes IMU
	mavlink_highres_imu_t highres_imu;

	// Attitude
	mavlink_attitude_t attitude;

  // Altitude
  mavlink_altitude_t altitude;

  // Altitude
  mavlink_command_long_t command_long;

	// System Parameters?


	// Time Stamps
	Time_Stamps time_stamps;

  //zxzxzxzx
  Flag_New_Msg flag_new_msg;

  //zxzxzxzx
  System_Id_Collection system_id_collection;

	void
	reset_timestamps()
	{
		time_stamps.reset_timestamps();
	}

};


// ----------------------------------------------------------------------------------
//   Autopilot Interface Class
// ----------------------------------------------------------------------------------
/*
 * Autopilot Interface Class
 *
 * This starts two threads for read and write over MAVlink. The read thread
 * listens for any MAVlink message and pushes it to the current_messages
 * attribute.  The write thread at the moment only streams a position target
 * in the local NED frame (mavlink_set_position_target_local_ned_t), which
 * is changed by using the method update_setpoint().  Sending these messages
 * are only half the requirement to get response from the autopilot, a signal
 * to enter "offboard_control" mode is sent by using the enable_offboard_control()
 * method.  Signal the exit of this mode with disable_offboard_control().  It's
 * important that one way or another this program signals offboard mode exit,
 * otherwise the vehicle will go into failsafe.
 */
class Autopilot_Interface
{

public:

  Autopilot_Interface(){};
	Autopilot_Interface(Serial_Port *serial_port_);
	~Autopilot_Interface();

	char reading_status;
	char writing_status;
	char control_status;
  uint64_t write_count;

  int system_id;
  int component_id;

	Mavlink_Messages current_messages;
	mavlink_set_position_target_local_ned_t initial_position;

	void update_setpoint(mavlink_set_position_target_local_ned_t setpoint);
	void read_messages();
	int  write_message(mavlink_message_t message);

	void enable_offboard_control();
	void disable_offboard_control();

	void start();
	void stop();

	void start_read_thread();
	void start_write_thread(void);

	void handle_quit( int sig );

  inline bool get_time_to_exit(void){
    return time_to_exit;
  }


private:

	Serial_Port *serial_port;

	bool time_to_exit;

	pthread_t read_tid;
	pthread_t write_tid;

	mavlink_set_position_target_local_ned_t current_setpoint;

	void read_thread();
	void write_thread(void);

	int toggle_offboard_control( bool flag );
	void write_setpoint();

};



#endif // AUTOPILOT_INTERFACE_H_


