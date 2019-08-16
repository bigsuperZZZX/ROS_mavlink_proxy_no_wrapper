;; Auto-generated. Do not edit!


(when (boundp 'ros_mavlink_proxy::HighresIMU)
  (if (not (find-package "ROS_MAVLINK_PROXY"))
    (make-package "ROS_MAVLINK_PROXY"))
  (shadow 'HighresIMU (find-package "ROS_MAVLINK_PROXY")))
(unless (find-package "ROS_MAVLINK_PROXY::HIGHRESIMU")
  (make-package "ROS_MAVLINK_PROXY::HIGHRESIMU"))

(in-package "ROS")
;;//! \htmlinclude HighresIMU.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_mavlink_proxy::HighresIMU
  :super ros::object
  :slots (_header _time_usec _xacc _yacc _zacc _xgyro _ygyro _zgyro _xmag _ymag _zmag _abs_pressure _diff_pressure _pressure_alt _temperature _fields_updated _id _origin_system_id ))

(defmethod ros_mavlink_proxy::HighresIMU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_usec __time_usec) 0)
    ((:xacc __xacc) 0.0)
    ((:yacc __yacc) 0.0)
    ((:zacc __zacc) 0.0)
    ((:xgyro __xgyro) 0.0)
    ((:ygyro __ygyro) 0.0)
    ((:zgyro __zgyro) 0.0)
    ((:xmag __xmag) 0.0)
    ((:ymag __ymag) 0.0)
    ((:zmag __zmag) 0.0)
    ((:abs_pressure __abs_pressure) 0.0)
    ((:diff_pressure __diff_pressure) 0.0)
    ((:pressure_alt __pressure_alt) 0.0)
    ((:temperature __temperature) 0.0)
    ((:fields_updated __fields_updated) 0)
    ((:id __id) 0)
    ((:origin_system_id __origin_system_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_usec (round __time_usec))
   (setq _xacc (float __xacc))
   (setq _yacc (float __yacc))
   (setq _zacc (float __zacc))
   (setq _xgyro (float __xgyro))
   (setq _ygyro (float __ygyro))
   (setq _zgyro (float __zgyro))
   (setq _xmag (float __xmag))
   (setq _ymag (float __ymag))
   (setq _zmag (float __zmag))
   (setq _abs_pressure (float __abs_pressure))
   (setq _diff_pressure (float __diff_pressure))
   (setq _pressure_alt (float __pressure_alt))
   (setq _temperature (float __temperature))
   (setq _fields_updated (round __fields_updated))
   (setq _id (round __id))
   (setq _origin_system_id (round __origin_system_id))
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
  (:xacc
   (&optional __xacc)
   (if __xacc (setq _xacc __xacc)) _xacc)
  (:yacc
   (&optional __yacc)
   (if __yacc (setq _yacc __yacc)) _yacc)
  (:zacc
   (&optional __zacc)
   (if __zacc (setq _zacc __zacc)) _zacc)
  (:xgyro
   (&optional __xgyro)
   (if __xgyro (setq _xgyro __xgyro)) _xgyro)
  (:ygyro
   (&optional __ygyro)
   (if __ygyro (setq _ygyro __ygyro)) _ygyro)
  (:zgyro
   (&optional __zgyro)
   (if __zgyro (setq _zgyro __zgyro)) _zgyro)
  (:xmag
   (&optional __xmag)
   (if __xmag (setq _xmag __xmag)) _xmag)
  (:ymag
   (&optional __ymag)
   (if __ymag (setq _ymag __ymag)) _ymag)
  (:zmag
   (&optional __zmag)
   (if __zmag (setq _zmag __zmag)) _zmag)
  (:abs_pressure
   (&optional __abs_pressure)
   (if __abs_pressure (setq _abs_pressure __abs_pressure)) _abs_pressure)
  (:diff_pressure
   (&optional __diff_pressure)
   (if __diff_pressure (setq _diff_pressure __diff_pressure)) _diff_pressure)
  (:pressure_alt
   (&optional __pressure_alt)
   (if __pressure_alt (setq _pressure_alt __pressure_alt)) _pressure_alt)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:fields_updated
   (&optional __fields_updated)
   (if __fields_updated (setq _fields_updated __fields_updated)) _fields_updated)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:origin_system_id
   (&optional __origin_system_id)
   (if __origin_system_id (setq _origin_system_id __origin_system_id)) _origin_system_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _time_usec
    8
    ;; float32 _xacc
    4
    ;; float32 _yacc
    4
    ;; float32 _zacc
    4
    ;; float32 _xgyro
    4
    ;; float32 _ygyro
    4
    ;; float32 _zgyro
    4
    ;; float32 _xmag
    4
    ;; float32 _ymag
    4
    ;; float32 _zmag
    4
    ;; float32 _abs_pressure
    4
    ;; float32 _diff_pressure
    4
    ;; float32 _pressure_alt
    4
    ;; float32 _temperature
    4
    ;; uint16 _fields_updated
    2
    ;; uint8 _id
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
     ;; float32 _xacc
       (sys::poke _xacc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yacc
       (sys::poke _yacc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zacc
       (sys::poke _zacc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xgyro
       (sys::poke _xgyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ygyro
       (sys::poke _ygyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zgyro
       (sys::poke _zgyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xmag
       (sys::poke _xmag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ymag
       (sys::poke _ymag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zmag
       (sys::poke _zmag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _abs_pressure
       (sys::poke _abs_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_pressure
       (sys::poke _diff_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure_alt
       (sys::poke _pressure_alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _fields_updated
       (write-word _fields_updated s)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _origin_system_id
       (write-byte _origin_system_id s)
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
   ;; float32 _xacc
     (setq _xacc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yacc
     (setq _yacc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zacc
     (setq _zacc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xgyro
     (setq _xgyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ygyro
     (setq _ygyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zgyro
     (setq _zgyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xmag
     (setq _xmag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ymag
     (setq _ymag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zmag
     (setq _zmag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _abs_pressure
     (setq _abs_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_pressure
     (setq _diff_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure_alt
     (setq _pressure_alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _fields_updated
     (setq _fields_updated (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _origin_system_id
     (setq _origin_system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_mavlink_proxy::HighresIMU :md5sum-) "02e220874ef254dd246c5482f83c54a1")
(setf (get ros_mavlink_proxy::HighresIMU :datatype-) "ros_mavlink_proxy/HighresIMU")
(setf (get ros_mavlink_proxy::HighresIMU :definition-)
      "# Message for HIGHRES_IMU ( #105 )
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



(provide :ros_mavlink_proxy/HighresIMU "02e220874ef254dd246c5482f83c54a1")


