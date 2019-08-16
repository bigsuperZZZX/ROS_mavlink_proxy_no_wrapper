;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::Attitude)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'Attitude (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::ATTITUDE")
  (make-package "ROS_MAVLINK_PROXY::ATTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Attitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::Attitude
  :super ros::object
  :slots (_header _time_boot_ms _roll _pitch _yaw _rollspeed _pitchspeed _yawspeed _origin_system_id _target_system_id ))

(defmethod ros_mavlink_proxy::Attitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_boot_ms __time_boot_ms) 0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:rollspeed __rollspeed) 0.0)
    ((:pitchspeed __pitchspeed) 0.0)
    ((:yawspeed __yawspeed) 0.0)
    ((:origin_system_id __origin_system_id) 0)
    ((:target_system_id __target_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _rollspeed (float __rollspeed))
   (setq _pitchspeed (float __pitchspeed))
   (setq _yawspeed (float __yawspeed))
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
  (:time_boot_ms
   (&optional __time_boot_ms)
   (if __time_boot_ms (setq _time_boot_ms __time_boot_ms)) _time_boot_ms)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:rollspeed
   (&optional __rollspeed)
   (if __rollspeed (setq _rollspeed __rollspeed)) _rollspeed)
  (:pitchspeed
   (&optional __pitchspeed)
   (if __pitchspeed (setq _pitchspeed __pitchspeed)) _pitchspeed)
  (:yawspeed
   (&optional __yawspeed)
   (if __yawspeed (setq _yawspeed __yawspeed)) _yawspeed)
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
    ;; uint32 _time_boot_ms
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _rollspeed
    4
    ;; float32 _pitchspeed
    4
    ;; float32 _yawspeed
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
     ;; uint32 _time_boot_ms
       (write-long _time_boot_ms s)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rollspeed
       (sys::poke _rollspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitchspeed
       (sys::poke _pitchspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yawspeed
       (sys::poke _yawspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint32 _time_boot_ms
     (setq _time_boot_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rollspeed
     (setq _rollspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitchspeed
     (setq _pitchspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yawspeed
     (setq _yawspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_system_id
     (setq _target_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::Attitude :md5sum-) "ac2d717021150553bfe16ffa8c2170f1")
(setf (get ros_mavlink_proxy::Attitude :datatype-) "ros_mavlink_proxy/Attitude")
(setf (get ros_mavlink_proxy::Attitude :definition-)
      "# Message for ATTITUDE ( #30 )
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



(provide :ros_mavlink_proxy/Attitude "ac2d717021150553bfe16ffa8c2170f1")


