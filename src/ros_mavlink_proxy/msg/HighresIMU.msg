# Message for HIGHRES_IMU ( #105 )
# zxzxzxzx

std_msgs/Header header

uint64 time_usec	#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
float32 xacc		#m/s/s	X acceleration
float32 yacc		#m/s/s	Y acceleration
float32 zacc		#m/s/s	Z acceleration
float32 xgyro		#rad/s	Angular speed around X axis
float32 ygyro		#rad/s	Angular speed around Y axis
float32 zgyro		#rad/s	Angular speed around Z axis
float32 xmag		#gauss	X Magnetic field
float32 ymag		#gauss	Y Magnetic field
float32 zmag		#gauss	Z Magnetic field
float32 abs_pressure	#mbar	Absolute pressure
float32 diff_pressure	#mbar	Differential pressure
float32 pressure_alt	#	Altitude calculated from pressure
float32 temperature	#degC	Temperature
uint16 fields_updated	#	Bitmap for fields that have updated since last message, bit 0 = xacc, bit 12: temperature
uint8 id 		#       Id. Ids are numbered from 0 and map to IMUs numbered from 1 (e.g. IMU1 will have a message with id=0)

uint8 origin_system_id
