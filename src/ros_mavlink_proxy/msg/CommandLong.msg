# Message for COMMAND_LONG ( #76 )
# zxzxzxzx

std_msgs/Header header


uint8 target_system
uint8 target_component	#Component which should execute the command, 0 for all components
uint16 command		#Command ID (of command to send).
uint8 confirmation		#0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)
float32 param1			#Parameter 1 (for the specific command).
float32 param2			#Parameter 2 (for the specific command).
float32 param3			#Parameter 3 (for the specific command).
float32 param4			#Parameter 4 (for the specific command).
float32 param5			#Parameter 5 (for the specific command).
float32 param6			#Parameter 6 (for the specific command).
float32 param7			#Parameter 7 (for the specific command).

uint8 origin_system_id
uint8 target_system_id
