# Message for GLOBAL_POSITION_INT ( #33 )
# "INT" is the name of a coordinate system
# zxzxzxzx
std_msgs/Header header

uint32 time_boot_ms	#ms	Timestamp (time since system boot).
int32 lat		#degE7	Latitude, expressed
int32 lon		#degE7	Longitude, expressed
int32 alt		#mm	Altitude (MSL). Note that virtually all GPS modules provide both WGS84 and MSL.
int32 relative_alt	#mm	Altitude above ground
int16 vx		#cm/s	Ground X Speed (Latitude, positive north)
int16 vy		#cm/s	Ground Y Speed (Longitude, positive east)
int16 vz		#cm/s	Ground Z Speed (Altitude, positive down)
uint16 hdg		#cdeg	Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX

uint8 origin_system_id
