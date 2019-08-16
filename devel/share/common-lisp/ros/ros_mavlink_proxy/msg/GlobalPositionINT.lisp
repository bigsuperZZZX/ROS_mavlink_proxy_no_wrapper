; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude GlobalPositionINT.msg.html

(cl:defclass <GlobalPositionINT> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_boot_ms
    :reader time_boot_ms
    :initarg :time_boot_ms
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:integer
    :initform 0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:integer
    :initform 0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:integer
    :initform 0)
   (relative_alt
    :reader relative_alt
    :initarg :relative_alt
    :type cl:integer
    :initform 0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:fixnum
    :initform 0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:fixnum
    :initform 0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:fixnum
    :initform 0)
   (hdg
    :reader hdg
    :initarg :hdg
    :type cl:fixnum
    :initform 0)
   (origin_system_id
    :reader origin_system_id
    :initarg :origin_system_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GlobalPositionINT (<GlobalPositionINT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPositionINT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPositionINT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<GlobalPositionINT> is deprecated: use ros_mavlink_proxy-msg:GlobalPositionINT instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_boot_ms-val :lambda-list '(m))
(cl:defmethod time_boot_ms-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:time_boot_ms-val is deprecated.  Use ros_mavlink_proxy-msg:time_boot_ms instead.")
  (time_boot_ms m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:lat-val is deprecated.  Use ros_mavlink_proxy-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:lon-val is deprecated.  Use ros_mavlink_proxy-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:alt-val is deprecated.  Use ros_mavlink_proxy-msg:alt instead.")
  (alt m))

(cl:ensure-generic-function 'relative_alt-val :lambda-list '(m))
(cl:defmethod relative_alt-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:relative_alt-val is deprecated.  Use ros_mavlink_proxy-msg:relative_alt instead.")
  (relative_alt m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:vx-val is deprecated.  Use ros_mavlink_proxy-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:vy-val is deprecated.  Use ros_mavlink_proxy-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:vz-val is deprecated.  Use ros_mavlink_proxy-msg:vz instead.")
  (vz m))

(cl:ensure-generic-function 'hdg-val :lambda-list '(m))
(cl:defmethod hdg-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:hdg-val is deprecated.  Use ros_mavlink_proxy-msg:hdg instead.")
  (hdg m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <GlobalPositionINT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPositionINT>) ostream)
  "Serializes a message object of type '<GlobalPositionINT>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relative_alt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hdg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hdg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPositionINT>) istream)
  "Deserializes a message object of type '<GlobalPositionINT>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relative_alt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hdg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hdg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPositionINT>)))
  "Returns string type for a message object of type '<GlobalPositionINT>"
  "ros_mavlink_proxy/GlobalPositionINT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPositionINT)))
  "Returns string type for a message object of type 'GlobalPositionINT"
  "ros_mavlink_proxy/GlobalPositionINT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPositionINT>)))
  "Returns md5sum for a message object of type '<GlobalPositionINT>"
  "cff51bdfb07d5e1d0adb9ed0fb44f2f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPositionINT)))
  "Returns md5sum for a message object of type 'GlobalPositionINT"
  "cff51bdfb07d5e1d0adb9ed0fb44f2f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPositionINT>)))
  "Returns full string definition for message of type '<GlobalPositionINT>"
  (cl:format cl:nil "# Message for GLOBAL_POSITION_INT ( #33 )~%# \"INT\" is the name of a coordinate system~%# zxzxzxzx~%std_msgs/Header header~%~%uint32 time_boot_ms	#ms	Timestamp (time since system boot).~%int32 lat		#degE7	Latitude, expressed~%int32 lon		#degE7	Longitude, expressed~%int32 alt		#mm	Altitude (MSL). Note that virtually all GPS modules provide both WGS84 and MSL.~%int32 relative_alt	#mm	Altitude above ground~%int16 vx		#cm/s	Ground X Speed (Latitude, positive north)~%int16 vy		#cm/s	Ground Y Speed (Longitude, positive east)~%int16 vz		#cm/s	Ground Z Speed (Altitude, positive down)~%uint16 hdg		#cdeg	Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPositionINT)))
  "Returns full string definition for message of type 'GlobalPositionINT"
  (cl:format cl:nil "# Message for GLOBAL_POSITION_INT ( #33 )~%# \"INT\" is the name of a coordinate system~%# zxzxzxzx~%std_msgs/Header header~%~%uint32 time_boot_ms	#ms	Timestamp (time since system boot).~%int32 lat		#degE7	Latitude, expressed~%int32 lon		#degE7	Longitude, expressed~%int32 alt		#mm	Altitude (MSL). Note that virtually all GPS modules provide both WGS84 and MSL.~%int32 relative_alt	#mm	Altitude above ground~%int16 vx		#cm/s	Ground X Speed (Latitude, positive north)~%int16 vy		#cm/s	Ground Y Speed (Longitude, positive east)~%int16 vz		#cm/s	Ground Z Speed (Altitude, positive down)~%uint16 hdg		#cdeg	Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPositionINT>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     2
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPositionINT>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPositionINT
    (cl:cons ':header (header msg))
    (cl:cons ':time_boot_ms (time_boot_ms msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':relative_alt (relative_alt msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':hdg (hdg msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
))
