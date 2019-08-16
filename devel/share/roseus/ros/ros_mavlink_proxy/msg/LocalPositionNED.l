;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::LocalPositionNED)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'LocalPositionNED (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::LOCALPOSITIONNED")
  (make-package "ROS_MAVLINK_PROXY::LOCALPOSITIONNED"))

(in-package "ROS")
;;//! \htmlinclude LocalPositionNED.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::LocalPositionNED
  :super ros::object
  :slots (_header _time_boot_ms _x _y _z _vx _vy _vz _origin_system_id ))

(defmethod ros_mavlink_proxy::LocalPositionNED
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_boot_ms __time_boot_ms) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:origin_system_id __origin_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
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
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::LocalPositionNED :md5sum-) "91abeb7c1beef8d0c79097f32d5e766f")
(setf (get ros_mavlink_proxy::LocalPositionNED :datatype-) "ros_mavlink_proxy/LocalPositionNED")
(setf (get ros_mavlink_proxy::LocalPositionNED :definition-)
      "# Message for LOCAL_POSITION_NED ( #32 )
# \"NED\" is the name of a coordinate system
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



(provide :ros_mavlink_proxy/LocalPositionNED "91abeb7c1beef8d0c79097f32d5e766f")


