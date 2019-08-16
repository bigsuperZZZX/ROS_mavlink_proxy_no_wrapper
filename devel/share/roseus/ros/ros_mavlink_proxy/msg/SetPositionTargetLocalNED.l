;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::SetPositionTargetLocalNED)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'SetPositionTargetLocalNED (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::SETPOSITIONTARGETLOCALNED")
  (make-package "ROS_MAVLINK_PROXY::SETPOSITIONTARGETLOCALNED"))

(in-package "ROS")
;;//! \htmlinclude SetPositionTargetLocalNED.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::SetPositionTargetLocalNED
  :super ros::object
  :slots (_header _time_boot_ms _target_system _target_component _coordinate_frame _type_mask _x _y _z _vx _vy _vz _afx _afy _afz _yaw _yaw_rate _origin_system_id ))

(defmethod ros_mavlink_proxy::SetPositionTargetLocalNED
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_boot_ms __time_boot_ms) 0)
    ((:target_system __target_system) 0)
    ((:target_component __target_component) 0)
    ((:coordinate_frame __coordinate_frame) 0)
    ((:type_mask __type_mask) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:afx __afx) 0.0)
    ((:afy __afy) 0.0)
    ((:afz __afz) 0.0)
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:origin_system_id __origin_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _target_system (round __target_system))
   (setq _target_component (round __target_component))
   (setq _coordinate_frame (round __coordinate_frame))
   (setq _type_mask (round __type_mask))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _afx (float __afx))
   (setq _afy (float __afy))
   (setq _afz (float __afz))
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   (setq _origin_system_id (round __origin_system_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_boot_ms
   (&optional __time_boot_ms)
   (if __time_boot_ms (setq _time_boot_ms __time_boot_ms)) _time_boot_ms)
  (:target_system
   (&optional __target_system)
   (if __target_system (setq _target_system __target_system)) _target_system)
  (:target_component
   (&optional __target_component)
   (if __target_component (setq _target_component __target_component)) _target_component)
  (:coordinate_frame
   (&optional __coordinate_frame)
   (if __coordinate_frame (setq _coordinate_frame __coordinate_frame)) _coordinate_frame)
  (:type_mask
   (&optional __type_mask)
   (if __type_mask (setq _type_mask __type_mask)) _type_mask)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:afx
   (&optional __afx)
   (if __afx (setq _afx __afx)) _afx)
  (:afy
   (&optional __afy)
   (if __afy (setq _afy __afy)) _afy)
  (:afz
   (&optional __afz)
   (if __afz (setq _afz __afz)) _afz)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:origin_system_id
   (&optional __origin_system_id)
   (if __origin_system_id (setq _origin_system_id __origin_system_id)) _origin_system_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_boot_ms
    4
    ;; uint8 _target_system
    1
    ;; uint8 _target_component
    1
    ;; uint8 _coordinate_frame
    1
    ;; uint16 _type_mask
    2
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ;; float32 _afx
    4
    ;; float32 _afy
    4
    ;; float32 _afz
    4
    ;; float32 _yaw
    4
    ;; float32 _yaw_rate
    4
    ;; uint8 _origin_system_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_boot_ms
       (write-long _time_boot_ms s)
     ;; uint8 _target_system
       (write-byte _target_system s)
     ;; uint8 _target_component
       (write-byte _target_component s)
     ;; uint8 _coordinate_frame
       (write-byte _coordinate_frame s)
     ;; uint16 _type_mask
       (write-word _type_mask s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _afx
       (sys::poke _afx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _afy
       (sys::poke _afy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _afz
       (sys::poke _afz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _origin_system_id
       (write-byte _origin_system_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_boot_ms
     (setq _time_boot_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _target_system
     (setq _target_system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_component
     (setq _target_component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _coordinate_frame
     (setq _coordinate_frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _type_mask
     (setq _type_mask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _afx
     (setq _afx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _afy
     (setq _afy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _afz
     (setq _afz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::SetPositionTargetLocalNED :md5sum-) "3b8a5a72650c18aafb7440081d6b074e")
(setf (get ros_mavlink_proxy::SetPositionTargetLocalNED :datatype-) "ros_mavlink_proxy/SetPositionTargetLocalNED")
(setf (get ros_mavlink_proxy::SetPositionTargetLocalNED :definition-)
      "# Message for SET_POSITION_TARGET_LOCAL_NED ( #84 )
# \"NED\" is the name of a coordinate system
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



(provide :ros_mavlink_proxy/SetPositionTargetLocalNED "3b8a5a72650c18aafb7440081d6b074e")


