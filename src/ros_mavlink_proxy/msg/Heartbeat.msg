# Message for HEARTBEAT ( #0 )
# zxzxzxzx

std_msgs/Header header

uint8 type			#Vehicle or component type. For a flight controller component the vehicle type (quadrotor, helicopter, etc.). For other components the component type (e.g. camera, gimbal, etc.). This should be used in preference to component id for identifying the component type.
uint8 autopilot		#Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components that are not flight controllers.
uint8 base_mode		#System mode bitmap.
uint32 custom_mode		#A bitfield for use for autopilot-specific flags
uint8 system_status		#System status flag.
uint8 mavlink_version		#MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version

uint8 origin_system_id
