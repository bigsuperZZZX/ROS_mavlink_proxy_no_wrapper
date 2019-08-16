# Message for ATTITUDE ( #30 )
# zxzxzxzx

std_msgs/Header header


uint32 time_boot_ms	#ms	Timestamp (time since system boot).
float32 roll		#rad	Roll angle (-pi..+pi)
float32 pitch		#rad	Pitch angle (-pi..+pi)
float32 yaw		#rad	Yaw angle (-pi..+pi)
float32 rollspeed		#rad/s	Roll angular speed
float32 pitchspeed	#rad/s	Pitch angular speed
float32 yawspeed		#rad/s	Yaw angular speed

uint8 origin_system_id
uint8 target_system_id
