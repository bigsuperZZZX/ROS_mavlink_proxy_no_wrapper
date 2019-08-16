;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::Heartbeat)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'Heartbeat (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::HEARTBEAT")
  (make-package "ROS_MAVLINK_PROXY::HEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude Heartbeat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::Heartbeat
  :super ros::object
  :slots (_header _type _autopilot _base_mode _custom_mode _system_status _mavlink_version _origin_system_id ))

(defmethod ros_mavlink_proxy::Heartbeat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:autopilot __autopilot) 0)
    ((:base_mode __base_mode) 0)
    ((:custom_mode __custom_mode) 0)
    ((:system_status __system_status) 0)
    ((:mavlink_version __mavlink_version) 0)
    ((:origin_system_id __origin_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _autopilot (round __autopilot))
   (setq _base_mode (round __base_mode))
   (setq _custom_mode (round __custom_mode))
   (setq _system_status (round __system_status))
   (setq _mavlink_version (round __mavlink_version))
   (setq _origin_system_id (round __origin_system_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:autopilot
   (&optional __autopilot)
   (if __autopilot (setq _autopilot __autopilot)) _autopilot)
  (:base_mode
   (&optional __base_mode)
   (if __base_mode (setq _base_mode __base_mode)) _base_mode)
  (:custom_mode
   (&optional __custom_mode)
   (if __custom_mode (setq _custom_mode __custom_mode)) _custom_mode)
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:mavlink_version
   (&optional __mavlink_version)
   (if __mavlink_version (setq _mavlink_version __mavlink_version)) _mavlink_version)
  (:origin_system_id
   (&optional __origin_system_id)
   (if __origin_system_id (setq _origin_system_id __origin_system_id)) _origin_system_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; uint8 _autopilot
    1
    ;; uint8 _base_mode
    1
    ;; uint32 _custom_mode
    4
    ;; uint8 _system_status
    1
    ;; uint8 _mavlink_version
    1
    ;; uint8 _origin_system_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _autopilot
       (write-byte _autopilot s)
     ;; uint8 _base_mode
       (write-byte _base_mode s)
     ;; uint32 _custom_mode
       (write-long _custom_mode s)
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;; uint8 _mavlink_version
       (write-byte _mavlink_version s)
     ;; uint8 _origin_system_id
       (write-byte _origin_system_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autopilot
     (setq _autopilot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _base_mode
     (setq _base_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _custom_mode
     (setq _custom_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mavlink_version
     (setq _mavlink_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::Heartbeat :md5sum-) "6cde59cd898d4476dd26d5124e92dc91")
(setf (get ros_mavlink_proxy::Heartbeat :datatype-) "ros_mavlink_proxy/Heartbeat")
(setf (get ros_mavlink_proxy::Heartbeat :definition-)
      "# Message for HEARTBEAT ( #0 )
# zxzxzxzx

std_msgs/Header header

uint8 type			#Vehicle or component type. For a flight controller component the vehicle type (quadrotor, helicopter, etc.). For other components the component type (e.g. camera, gimbal, etc.). This should be used in preference to component id for identifying the component type.
uint8 autopilot		#Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components that are not flight controllers.
uint8 base_mode		#System mode bitmap.
uint32 custom_mode		#A bitfield for use for autopilot-specific flags
uint8 system_status		#System status flag.
uint8 mavlink_version		#MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version

uint8 origin_system_id

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



(provide :ros_mavlink_proxy/Heartbeat "6cde59cd898d4476dd26d5124e92dc91")


