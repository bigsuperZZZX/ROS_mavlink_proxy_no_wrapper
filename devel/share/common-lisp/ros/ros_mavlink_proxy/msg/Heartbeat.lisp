; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude Heartbeat.msg.html

(cl:defclass <Heartbeat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (autopilot
    :reader autopilot
    :initarg :autopilot
    :type cl:fixnum
    :initform 0)
   (base_mode
    :reader base_mode
    :initarg :base_mode
    :type cl:fixnum
    :initform 0)
   (custom_mode
    :reader custom_mode
    :initarg :custom_mode
    :type cl:integer
    :initform 0)
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0)
   (mavlink_version
    :reader mavlink_version
    :initarg :mavlink_version
    :type cl:fixnum
    :initform 0)
   (origin_system_id
    :reader origin_system_id
    :initarg :origin_system_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Heartbeat (<Heartbeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Heartbeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Heartbeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<Heartbeat> is deprecated: use ros_mavlink_proxy-msg:Heartbeat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:type-val is deprecated.  Use ros_mavlink_proxy-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'autopilot-val :lambda-list '(m))
(cl:defmethod autopilot-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:autopilot-val is deprecated.  Use ros_mavlink_proxy-msg:autopilot instead.")
  (autopilot m))

(cl:ensure-generic-function 'base_mode-val :lambda-list '(m))
(cl:defmethod base_mode-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:base_mode-val is deprecated.  Use ros_mavlink_proxy-msg:base_mode instead.")
  (base_mode m))

(cl:ensure-generic-function 'custom_mode-val :lambda-list '(m))
(cl:defmethod custom_mode-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:custom_mode-val is deprecated.  Use ros_mavlink_proxy-msg:custom_mode instead.")
  (custom_mode m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:system_status-val is deprecated.  Use ros_mavlink_proxy-msg:system_status instead.")
  (system_status m))

(cl:ensure-generic-function 'mavlink_version-val :lambda-list '(m))
(cl:defmethod mavlink_version-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:mavlink_version-val is deprecated.  Use ros_mavlink_proxy-msg:mavlink_version instead.")
  (mavlink_version m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Heartbeat>) ostream)
  "Serializes a message object of type '<Heartbeat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mavlink_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Heartbeat>) istream)
  "Deserializes a message object of type '<Heartbeat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mavlink_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Heartbeat>)))
  "Returns string type for a message object of type '<Heartbeat>"
  "ros_mavlink_proxy/Heartbeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Heartbeat)))
  "Returns string type for a message object of type 'Heartbeat"
  "ros_mavlink_proxy/Heartbeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Heartbeat>)))
  "Returns md5sum for a message object of type '<Heartbeat>"
  "6cde59cd898d4476dd26d5124e92dc91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Heartbeat)))
  "Returns md5sum for a message object of type 'Heartbeat"
  "6cde59cd898d4476dd26d5124e92dc91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Heartbeat>)))
  "Returns full string definition for message of type '<Heartbeat>"
  (cl:format cl:nil "# Message for HEARTBEAT ( #0 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint8 type			#Vehicle or component type. For a flight controller component the vehicle type (quadrotor, helicopter, etc.). For other components the component type (e.g. camera, gimbal, etc.). This should be used in preference to component id for identifying the component type.~%uint8 autopilot		#Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components that are not flight controllers.~%uint8 base_mode		#System mode bitmap.~%uint32 custom_mode		#A bitfield for use for autopilot-specific flags~%uint8 system_status		#System status flag.~%uint8 mavlink_version		#MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Heartbeat)))
  "Returns full string definition for message of type 'Heartbeat"
  (cl:format cl:nil "# Message for HEARTBEAT ( #0 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint8 type			#Vehicle or component type. For a flight controller component the vehicle type (quadrotor, helicopter, etc.). For other components the component type (e.g. camera, gimbal, etc.). This should be used in preference to component id for identifying the component type.~%uint8 autopilot		#Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components that are not flight controllers.~%uint8 base_mode		#System mode bitmap.~%uint32 custom_mode		#A bitfield for use for autopilot-specific flags~%uint8 system_status		#System status flag.~%uint8 mavlink_version		#MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Heartbeat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Heartbeat>))
  "Converts a ROS message object to a list"
  (cl:list 'Heartbeat
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':autopilot (autopilot msg))
    (cl:cons ':base_mode (base_mode msg))
    (cl:cons ':custom_mode (custom_mode msg))
    (cl:cons ':system_status (system_status msg))
    (cl:cons ':mavlink_version (mavlink_version msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
))
