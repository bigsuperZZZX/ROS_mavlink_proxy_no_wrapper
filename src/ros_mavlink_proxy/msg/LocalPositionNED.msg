# Message for LOCAL_POSITION_NED ( #32 )
# "NED" is the name of a coordinate system
# zxzxzxzx

std_msgs/Header header

uint32 time_boot_ms	#ms	Timestamp (time since system boot).
float32 x                 #m	X Position
float32 y                 #m	Y Position
float32 z                 #m	Z Position
float32 vx		#m/s	X Speed
float32 vy		#m/s	Y Speed
float32 vz		#m/s	Z Speed

uint8 origin_system_id
