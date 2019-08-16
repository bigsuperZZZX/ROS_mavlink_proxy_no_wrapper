;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::GlobalPositionINT)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'GlobalPositionINT (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::GLOBALPOSITIONINT")
  (make-package "ROS_MAVLINK_PROXY::GLOBALPOSITIONINT"))

(in-package "ROS")
;;//! \htmlinclude GlobalPositionINT.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::GlobalPositionINT
  :super ros::object
  :slots (_header _time_boot_ms _lat _lon _alt _relative_alt _vx _vy _vz _hdg _origin_system_id ))

(defmethod ros_mavlink_proxy::GlobalPositionINT
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_boot_ms __time_boot_ms) 0)
    ((:lat __lat) 0)
    ((:lon __lon) 0)
    ((:alt __alt) 0)
    ((:relative_alt __relative_alt) 0)
    ((:vx __vx) 0)
    ((:vy __vy) 0)
    ((:vz __vz) 0)
    ((:hdg __hdg) 0)
    ((:origin_system_id __origin_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _lat (round __lat))
   (setq _lon (round __lon))
   (setq _alt (round __alt))
   (setq _relative_alt (round __relative_alt))
   (setq _vx (round __vx))
   (setq _vy (round __vy))
   (setq _vz (round __vz))
   (setq _hdg (round __hdg))
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
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:relative_alt
   (&optional __relative_alt)
   (if __relative_alt (setq _relative_alt __relative_alt)) _relative_alt)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:hdg
   (&optional __hdg)
   (if __hdg (setq _hdg __hdg)) _hdg)
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
    ;; int32 _lat
    4
    ;; int32 _lon
    4
    ;; int32 _alt
    4
    ;; int32 _relative_alt
    4
    ;; int16 _vx
    2
    ;; int16 _vy
    2
    ;; int16 _vz
    2
    ;; uint16 _hdg
    2
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
     ;; int32 _lat
       (write-long _lat s)
     ;; int32 _lon
       (write-long _lon s)
     ;; int32 _alt
       (write-long _alt s)
     ;; int32 _relative_alt
       (write-long _relative_alt s)
     ;; int16 _vx
       (write-word _vx s)
     ;; int16 _vy
       (write-word _vy s)
     ;; int16 _vz
       (write-word _vz s)
     ;; uint16 _hdg
       (write-word _hdg s)
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
   ;; int32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alt
     (setq _alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _relative_alt
     (setq _relative_alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _vx
     (setq _vx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vy
     (setq _vy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vz
     (setq _vz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _hdg
     (setq _hdg (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::GlobalPositionINT :md5sum-) "cff51bdfb07d5e1d0adb9ed0fb44f2f8")
(setf (get ros_mavlink_proxy::GlobalPositionINT :datatype-) "ros_mavlink_proxy/GlobalPositionINT")
(setf (get ros_mavlink_proxy::GlobalPositionINT :definition-)
      "# Message for GLOBAL_POSITION_INT ( #33 )
# \"INT\" is the name of a coordinate system
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



(provide :ros_mavlink_proxy/GlobalPositionINT "cff51bdfb07d5e1d0adb9ed0fb44f2f8")


