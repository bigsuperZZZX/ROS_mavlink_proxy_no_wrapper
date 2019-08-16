;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::Altitude)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'Altitude (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::ALTITUDE")
  (make-package "ROS_MAVLINK_PROXY::ALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Altitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::Altitude
  :super ros::object
  :slots (_header _time_usec _altitude_monotonic _altitude_amsl _altitude_local _altitude_relative _altitude_terrain _bottom_clearance _origin_system_id _target_system_id ))

(defmethod ros_mavlink_proxy::Altitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_usec __time_usec) 0)
    ((:altitude_monotonic __altitude_monotonic) 0.0)
    ((:altitude_amsl __altitude_amsl) 0.0)
    ((:altitude_local __altitude_local) 0.0)
    ((:altitude_relative __altitude_relative) 0.0)
    ((:altitude_terrain __altitude_terrain) 0.0)
    ((:bottom_clearance __bottom_clearance) 0.0)
    ((:origin_system_id __origin_system_id) 0)
    ((:target_system_id __target_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_usec (round __time_usec))
   (setq _altitude_monotonic (float __altitude_monotonic))
   (setq _altitude_amsl (float __altitude_amsl))
   (setq _altitude_local (float __altitude_local))
   (setq _altitude_relative (float __altitude_relative))
   (setq _altitude_terrain (float __altitude_terrain))
   (setq _bottom_clearance (float __bottom_clearance))
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
  (:time_usec
   (&optional __time_usec)
   (if __time_usec (setq _time_usec __time_usec)) _time_usec)
  (:altitude_monotonic
   (&optional __altitude_monotonic)
   (if __altitude_monotonic (setq _altitude_monotonic __altitude_monotonic)) _altitude_monotonic)
  (:altitude_amsl
   (&optional __altitude_amsl)
   (if __altitude_amsl (setq _altitude_amsl __altitude_amsl)) _altitude_amsl)
  (:altitude_local
   (&optional __altitude_local)
   (if __altitude_local (setq _altitude_local __altitude_local)) _altitude_local)
  (:altitude_relative
   (&optional __altitude_relative)
   (if __altitude_relative (setq _altitude_relative __altitude_relative)) _altitude_relative)
  (:altitude_terrain
   (&optional __altitude_terrain)
   (if __altitude_terrain (setq _altitude_terrain __altitude_terrain)) _altitude_terrain)
  (:bottom_clearance
   (&optional __bottom_clearance)
   (if __bottom_clearance (setq _bottom_clearance __bottom_clearance)) _bottom_clearance)
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
    ;; uint64 _time_usec
    8
    ;; float32 _altitude_monotonic
    4
    ;; float32 _altitude_amsl
    4
    ;; float32 _altitude_local
    4
    ;; float32 _altitude_relative
    4
    ;; float32 _altitude_terrain
    4
    ;; float32 _bottom_clearance
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
     ;; uint64 _time_usec
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_usec (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_usec) (= (length (_time_usec . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_usec . bv) 0) 0) s)
              (write-long (ash (elt (_time_usec . bv) 1) -1) s))
             ((and (class _time_usec) (= (length (_time_usec . bv)) 1)) ;; big1
              (write-long (elt (_time_usec . bv) 0) s)
              (write-long (if (>= _time_usec 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_usec s)(write-long (if (>= _time_usec 0) 0 #xffffffff) s)))
     ;; float32 _altitude_monotonic
       (sys::poke _altitude_monotonic (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_amsl
       (sys::poke _altitude_amsl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_local
       (sys::poke _altitude_local (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_relative
       (sys::poke _altitude_relative (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_terrain
       (sys::poke _altitude_terrain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom_clearance
       (sys::poke _bottom_clearance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint64 _time_usec
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_usec (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_usec (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _altitude_monotonic
     (setq _altitude_monotonic (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_amsl
     (setq _altitude_amsl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_local
     (setq _altitude_local (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_relative
     (setq _altitude_relative (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_terrain
     (setq _altitude_terrain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom_clearance
     (setq _bottom_clearance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_system_id
     (setq _target_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::Altitude :md5sum-) "68ad96eb6432bcb3e2b661f47f5f0f0b")
(setf (get ros_mavlink_proxy::Altitude :datatype-) "ros_mavlink_proxy/Altitude")
(setf (get ros_mavlink_proxy::Altitude :definition-)
      "# Message for ALTITUDE ( #141 )
# zxzxzxzx

std_msgs/Header header

uint64 time_usec		#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
float32 altitude_monotonic	#m	This altitude measure is initialized on system boot and monotonic (it is never reset, but represents the local altitude change). The only guarantee on this field is that it will never be reset and is consistent within a flight. The recommended value for this field is the uncorrected barometric altitude at boot time. This altitude will also drift and vary between flights.
float32 altitude_amsl		#m	This altitude measure is strictly above mean sea level and might be non-monotonic (it might reset on events like GPS lock or when a new QNH value is set). It should be the altitude to which global altitude waypoints are compared to. Note that it is *not* the GPS altitude, however, most GPS modules already output MSL by default and not the WGS84 altitude.
float32 altitude_local		#m	This is the local altitude in the local coordinate frame. It is not the altitude above home, but in reference to the coordinate origin (0, 0, 0). It is up-positive.
float32 altitude_relative		#m	This is the altitude above the home position. It resets on each change of the current home position.
float32 altitude_terrain		#m	This is the altitude above terrain. It might be fed by a terrain database or an altimeter. Values smaller than -1000 should be interpreted as unknown.
float32 bottom_clearance		#m	This is not the altitude, but the clear space below the system according to the fused clearance estimate. It generally should max out at the maximum range of e.g. the laser altimeter. It is generally a moving target. A negative value indicates no measurement available.

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



(provide :ros_mavlink_proxy/Altitude "68ad96eb6432bcb3e2b661f47f5f0f0b")


