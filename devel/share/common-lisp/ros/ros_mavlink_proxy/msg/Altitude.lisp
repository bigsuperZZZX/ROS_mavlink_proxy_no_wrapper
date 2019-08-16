; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude Altitude.msg.html

(cl:defclass <Altitude> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_usec
    :reader time_usec
    :initarg :time_usec
    :type cl:integer
    :initform 0)
   (altitude_monotonic
    :reader altitude_monotonic
    :initarg :altitude_monotonic
    :type cl:float
    :initform 0.0)
   (altitude_amsl
    :reader altitude_amsl
    :initarg :altitude_amsl
    :type cl:float
    :initform 0.0)
   (altitude_local
    :reader altitude_local
    :initarg :altitude_local
    :type cl:float
    :initform 0.0)
   (altitude_relative
    :reader altitude_relative
    :initarg :altitude_relative
    :type cl:float
    :initform 0.0)
   (altitude_terrain
    :reader altitude_terrain
    :initarg :altitude_terrain
    :type cl:float
    :initform 0.0)
   (bottom_clearance
    :reader bottom_clearance
    :initarg :bottom_clearance
    :type cl:float
    :initform 0.0)
   (origin_system_id
    :reader origin_system_id
    :initarg :origin_system_id
    :type cl:fixnum
    :initform 0)
   (target_system_id
    :reader target_system_id
    :initarg :target_system_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Altitude (<Altitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Altitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Altitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<Altitude> is deprecated: use ros_mavlink_proxy-msg:Altitude instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_usec-val :lambda-list '(m))
(cl:defmethod time_usec-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:time_usec-val is deprecated.  Use ros_mavlink_proxy-msg:time_usec instead.")
  (time_usec m))

(cl:ensure-generic-function 'altitude_monotonic-val :lambda-list '(m))
(cl:defmethod altitude_monotonic-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:altitude_monotonic-val is deprecated.  Use ros_mavlink_proxy-msg:altitude_monotonic instead.")
  (altitude_monotonic m))

(cl:ensure-generic-function 'altitude_amsl-val :lambda-list '(m))
(cl:defmethod altitude_amsl-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:altitude_amsl-val is deprecated.  Use ros_mavlink_proxy-msg:altitude_amsl instead.")
  (altitude_amsl m))

(cl:ensure-generic-function 'altitude_local-val :lambda-list '(m))
(cl:defmethod altitude_local-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:altitude_local-val is deprecated.  Use ros_mavlink_proxy-msg:altitude_local instead.")
  (altitude_local m))

(cl:ensure-generic-function 'altitude_relative-val :lambda-list '(m))
(cl:defmethod altitude_relative-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:altitude_relative-val is deprecated.  Use ros_mavlink_proxy-msg:altitude_relative instead.")
  (altitude_relative m))

(cl:ensure-generic-function 'altitude_terrain-val :lambda-list '(m))
(cl:defmethod altitude_terrain-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:altitude_terrain-val is deprecated.  Use ros_mavlink_proxy-msg:altitude_terrain instead.")
  (altitude_terrain m))

(cl:ensure-generic-function 'bottom_clearance-val :lambda-list '(m))
(cl:defmethod bottom_clearance-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:bottom_clearance-val is deprecated.  Use ros_mavlink_proxy-msg:bottom_clearance instead.")
  (bottom_clearance m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))

(cl:ensure-generic-function 'target_system_id-val :lambda-list '(m))
(cl:defmethod target_system_id-val ((m <Altitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:target_system_id instead.")
  (target_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Altitude>) ostream)
  "Serializes a message object of type '<Altitude>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_usec)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_monotonic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_amsl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_local))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_relative))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_terrain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bottom_clearance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Altitude>) istream)
  "Deserializes a message object of type '<Altitude>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_usec)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_monotonic) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_amsl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_local) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_relative) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_terrain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom_clearance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Altitude>)))
  "Returns string type for a message object of type '<Altitude>"
  "ros_mavlink_proxy/Altitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Altitude)))
  "Returns string type for a message object of type 'Altitude"
  "ros_mavlink_proxy/Altitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Altitude>)))
  "Returns md5sum for a message object of type '<Altitude>"
  "68ad96eb6432bcb3e2b661f47f5f0f0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Altitude)))
  "Returns md5sum for a message object of type 'Altitude"
  "68ad96eb6432bcb3e2b661f47f5f0f0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Altitude>)))
  "Returns full string definition for message of type '<Altitude>"
  (cl:format cl:nil "# Message for ALTITUDE ( #141 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint64 time_usec		#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.~%float32 altitude_monotonic	#m	This altitude measure is initialized on system boot and monotonic (it is never reset, but represents the local altitude change). The only guarantee on this field is that it will never be reset and is consistent within a flight. The recommended value for this field is the uncorrected barometric altitude at boot time. This altitude will also drift and vary between flights.~%float32 altitude_amsl		#m	This altitude measure is strictly above mean sea level and might be non-monotonic (it might reset on events like GPS lock or when a new QNH value is set). It should be the altitude to which global altitude waypoints are compared to. Note that it is *not* the GPS altitude, however, most GPS modules already output MSL by default and not the WGS84 altitude.~%float32 altitude_local		#m	This is the local altitude in the local coordinate frame. It is not the altitude above home, but in reference to the coordinate origin (0, 0, 0). It is up-positive.~%float32 altitude_relative		#m	This is the altitude above the home position. It resets on each change of the current home position.~%float32 altitude_terrain		#m	This is the altitude above terrain. It might be fed by a terrain database or an altimeter. Values smaller than -1000 should be interpreted as unknown.~%float32 bottom_clearance		#m	This is not the altitude, but the clear space below the system according to the fused clearance estimate. It generally should max out at the maximum range of e.g. the laser altimeter. It is generally a moving target. A negative value indicates no measurement available.~%~%uint8 origin_system_id~%uint8 target_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Altitude)))
  "Returns full string definition for message of type 'Altitude"
  (cl:format cl:nil "# Message for ALTITUDE ( #141 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint64 time_usec		#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.~%float32 altitude_monotonic	#m	This altitude measure is initialized on system boot and monotonic (it is never reset, but represents the local altitude change). The only guarantee on this field is that it will never be reset and is consistent within a flight. The recommended value for this field is the uncorrected barometric altitude at boot time. This altitude will also drift and vary between flights.~%float32 altitude_amsl		#m	This altitude measure is strictly above mean sea level and might be non-monotonic (it might reset on events like GPS lock or when a new QNH value is set). It should be the altitude to which global altitude waypoints are compared to. Note that it is *not* the GPS altitude, however, most GPS modules already output MSL by default and not the WGS84 altitude.~%float32 altitude_local		#m	This is the local altitude in the local coordinate frame. It is not the altitude above home, but in reference to the coordinate origin (0, 0, 0). It is up-positive.~%float32 altitude_relative		#m	This is the altitude above the home position. It resets on each change of the current home position.~%float32 altitude_terrain		#m	This is the altitude above terrain. It might be fed by a terrain database or an altimeter. Values smaller than -1000 should be interpreted as unknown.~%float32 bottom_clearance		#m	This is not the altitude, but the clear space below the system according to the fused clearance estimate. It generally should max out at the maximum range of e.g. the laser altimeter. It is generally a moving target. A negative value indicates no measurement available.~%~%uint8 origin_system_id~%uint8 target_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Altitude>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Altitude>))
  "Converts a ROS message object to a list"
  (cl:list 'Altitude
    (cl:cons ':header (header msg))
    (cl:cons ':time_usec (time_usec msg))
    (cl:cons ':altitude_monotonic (altitude_monotonic msg))
    (cl:cons ':altitude_amsl (altitude_amsl msg))
    (cl:cons ':altitude_local (altitude_local msg))
    (cl:cons ':altitude_relative (altitude_relative msg))
    (cl:cons ':altitude_terrain (altitude_terrain msg))
    (cl:cons ':bottom_clearance (bottom_clearance msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
    (cl:cons ':target_system_id (target_system_id msg))
))
