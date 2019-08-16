# Message for SET_POSITION_TARGET_LOCAL_NED ( #84 )
# "NED" is the name of a coordinate system
# zxzxzxzx

std_msgs/Header header

uint32 time_boot_ms       #ms		Timestamp (time since system boot).
uint8 target_system       #		System ID
uint8 target_component    #		Component ID
uint8 coordinate_frame    #       	Valid options are: MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8, MAV_FRAME_BODY_OFFSET_NED = 9
uint16 type_mask          #		POSITION_TARGET_TYPEMASK	Bitmap to indicate which dimensions should be ignored by the vehicle.
float32 x                     #m		X Position in NED frame
float32 y                     #m		Y Position in NED frame
float32 z                     #m		Z Position in NED frame (note, altitude is negative in NED)
float32 vx                    #m/s	X velocity in NED frame
float32 vy                    #m/s	Y velocity in NED frame
float32 vz                    #m/s	Z velocity in NED frame
float32 afx                   #m/s/s	X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
float32 afy                   #m/s/s	Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
float32 afz                   #m/s/s	Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
float32 yaw                   #rad	yaw setpoint
float32 yaw_rate              #rad/s	yaw rate setpoint

uint8 origin_system_id
