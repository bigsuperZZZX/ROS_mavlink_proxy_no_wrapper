;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::CommandLong)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'CommandLong (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::COMMANDLONG")
  (make-package "ROS_MAVLINK_PROXY::COMMANDLONG"))

(in-package "ROS")
;;//! \htmlinclude CommandLong.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::CommandLong
  :super ros::object
  :slots (_header _target_system _target_component _command _confirmation _param1 _param2 _param3 _param4 _param5 _param6 _param7 _origin_system_id _target_system_id ))

(defmethod ros_mavlink_proxy::CommandLong
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:target_system __target_system) 0)
    ((:target_component __target_component) 0)
    ((:command __command) 0)
    ((:confirmation __confirmation) 0)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:param5 __param5) 0.0)
    ((:param6 __param6) 0.0)
    ((:param7 __param7) 0.0)
    ((:origin_system_id __origin_system_id) 0)
    ((:target_system_id __target_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _target_system (round __target_system))
   (setq _target_component (round __target_component))
   (setq _command (round __command))
   (setq _confirmation (round __confirmation))
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _param5 (float __param5))
   (setq _param6 (float __param6))
   (setq _param7 (float __param7))
   (setq _origin_system_id (round __origin_system_id))
   (setq _target_system_id (round __target_system_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:target_system
   (&optional __target_system)
   (if __target_system (setq _target_system __target_system)) _target_system)
  (:target_component
   (&optional __target_component)
   (if __target_component (setq _target_component __target_component)) _target_component)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:confirmation
   (&optional __confirmation)
   (if __confirmation (setq _confirmation __confirmation)) _confirmation)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:param5
   (&optional __param5)
   (if __param5 (setq _param5 __param5)) _param5)
  (:param6
   (&optional __param6)
   (if __param6 (setq _param6 __param6)) _param6)
  (:param7
   (&optional __param7)
   (if __param7 (setq _param7 __param7)) _param7)
  (:origin_system_id
   (&optional __origin_system_id)
   (if __origin_system_id (setq _origin_system_id __origin_system_id)) _origin_system_id)
  (:target_system_id
   (&optional __target_system_id)
   (if __target_system_id (setq _target_system_id __target_system_id)) _target_system_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _target_system
    1
    ;; uint8 _target_component
    1
    ;; uint16 _command
    2
    ;; uint8 _confirmation
    1
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; float32 _param5
    4
    ;; float32 _param6
    4
    ;; float32 _param7
    4
    ;; uint8 _origin_system_id
    1
    ;; uint8 _target_system_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _target_system
       (write-byte _target_system s)
     ;; uint8 _target_component
       (write-byte _target_component s)
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _confirmation
       (write-byte _confirmation s)
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param5
       (sys::poke _param5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param6
       (sys::poke _param6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param7
       (sys::poke _param7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _origin_system_id
       (write-byte _origin_system_id s)
     ;; uint8 _target_system_id
       (write-byte _target_system_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _target_system
     (setq _target_system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_component
     (setq _target_component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _confirmation
     (setq _confirmation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param5
     (setq _param5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param6
     (setq _param6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param7
     (setq _param7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_system_id
     (setq _target_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::CommandLong :md5sum-) "fa6caa6eedcb0ef38370683dbbc48671")
(setf (get ros_mavlink_proxy::CommandLong :datatype-) "ros_mavlink_proxy/CommandLong")
(setf (get ros_mavlink_proxy::CommandLong :definition-)
      "# Message for COMMAND_LONG ( #76 )
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

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :ros_mavlink_proxy/CommandLong "fa6caa6eedcb0ef38370683dbbc48671")


