; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude CommandLong.msg.html

(cl:defclass <CommandLong> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_system
    :reader target_system
    :initarg :target_system
    :type cl:fixnum
    :initform 0)
   (target_component
    :reader target_component
    :initarg :target_component
    :type cl:fixnum
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (confirmation
    :reader confirmation
    :initarg :confirmation
    :type cl:fixnum
    :initform 0)
   (param1
    :reader param1
    :initarg :param1
    :type cl:float
    :initform 0.0)
   (param2
    :reader param2
    :initarg :param2
    :type cl:float
    :initform 0.0)
   (param3
    :reader param3
    :initarg :param3
    :type cl:float
    :initform 0.0)
   (param4
    :reader param4
    :initarg :param4
    :type cl:float
    :initform 0.0)
   (param5
    :reader param5
    :initarg :param5
    :type cl:float
    :initform 0.0)
   (param6
    :reader param6
    :initarg :param6
    :type cl:float
    :initform 0.0)
   (param7
    :reader param7
    :initarg :param7
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

(cl:defclass CommandLong (<CommandLong>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandLong>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandLong)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<CommandLong> is deprecated: use ros_mavlink_proxy-msg:CommandLong instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'target_system-val :lambda-list '(m))
(cl:defmethod target_system-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_system-val is deprecated.  Use ros_mavlink_proxy-msg:target_system instead.")
  (target_system m))

(cl:ensure-generic-function 'target_component-val :lambda-list '(m))
(cl:defmethod target_component-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_component-val is deprecated.  Use ros_mavlink_proxy-msg:target_component instead.")
  (target_component m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:command-val is deprecated.  Use ros_mavlink_proxy-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'confirmation-val :lambda-list '(m))
(cl:defmethod confirmation-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:confirmation-val is deprecated.  Use ros_mavlink_proxy-msg:confirmation instead.")
  (confirmation m))

(cl:ensure-generic-function 'param1-val :lambda-list '(m))
(cl:defmethod param1-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param1-val is deprecated.  Use ros_mavlink_proxy-msg:param1 instead.")
  (param1 m))

(cl:ensure-generic-function 'param2-val :lambda-list '(m))
(cl:defmethod param2-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param2-val is deprecated.  Use ros_mavlink_proxy-msg:param2 instead.")
  (param2 m))

(cl:ensure-generic-function 'param3-val :lambda-list '(m))
(cl:defmethod param3-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param3-val is deprecated.  Use ros_mavlink_proxy-msg:param3 instead.")
  (param3 m))

(cl:ensure-generic-function 'param4-val :lambda-list '(m))
(cl:defmethod param4-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param4-val is deprecated.  Use ros_mavlink_proxy-msg:param4 instead.")
  (param4 m))

(cl:ensure-generic-function 'param5-val :lambda-list '(m))
(cl:defmethod param5-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param5-val is deprecated.  Use ros_mavlink_proxy-msg:param5 instead.")
  (param5 m))

(cl:ensure-generic-function 'param6-val :lambda-list '(m))
(cl:defmethod param6-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param6-val is deprecated.  Use ros_mavlink_proxy-msg:param6 instead.")
  (param6 m))

(cl:ensure-generic-function 'param7-val :lambda-list '(m))
(cl:defmethod param7-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:param7-val is deprecated.  Use ros_mavlink_proxy-msg:param7 instead.")
  (param7 m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))

(cl:ensure-generic-function 'target_system_id-val :lambda-list '(m))
(cl:defmethod target_system_id-val ((m <CommandLong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:target_system_id instead.")
  (target_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandLong>) ostream)
  "Serializes a message object of type '<CommandLong>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_component)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confirmation)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'param7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandLong>) istream)
  "Deserializes a message object of type '<CommandLong>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_component)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confirmation)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandLong>)))
  "Returns string type for a message object of type '<CommandLong>"
  "ros_mavlink_proxy/CommandLong")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandLong)))
  "Returns string type for a message object of type 'CommandLong"
  "ros_mavlink_proxy/CommandLong")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandLong>)))
  "Returns md5sum for a message object of type '<CommandLong>"
  "fa6caa6eedcb0ef38370683dbbc48671")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandLong)))
  "Returns md5sum for a message object of type 'CommandLong"
  "fa6caa6eedcb0ef38370683dbbc48671")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandLong>)))
  "Returns full string definition for message of type '<CommandLong>"
  (cl:format cl:nil "# Message for COMMAND_LONG ( #76 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%~%uint8 target_system~%uint8 target_component	#Component which should execute the command, 0 for all components~%uint16 command		#Command ID (of command to send).~%uint8 confirmation		#0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)~%float32 param1			#Parameter 1 (for the specific command).~%float32 param2			#Parameter 2 (for the specific command).~%float32 param3			#Parameter 3 (for the specific command).~%float32 param4			#Parameter 4 (for the specific command).~%float32 param5			#Parameter 5 (for the specific command).~%float32 param6			#Parameter 6 (for the specific command).~%float32 param7			#Parameter 7 (for the specific command).~%~%uint8 origin_system_id~%uint8 target_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandLong)))
  "Returns full string definition for message of type 'CommandLong"
  (cl:format cl:nil "# Message for COMMAND_LONG ( #76 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%~%uint8 target_system~%uint8 target_component	#Component which should execute the command, 0 for all components~%uint16 command		#Command ID (of command to send).~%uint8 confirmation		#0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)~%float32 param1			#Parameter 1 (for the specific command).~%float32 param2			#Parameter 2 (for the specific command).~%float32 param3			#Parameter 3 (for the specific command).~%float32 param4			#Parameter 4 (for the specific command).~%float32 param5			#Parameter 5 (for the specific command).~%float32 param6			#Parameter 6 (for the specific command).~%float32 param7			#Parameter 7 (for the specific command).~%~%uint8 origin_system_id~%uint8 target_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandLong>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     2
     1
     4
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandLong>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandLong
    (cl:cons ':header (header msg))
    (cl:cons ':target_system (target_system msg))
    (cl:cons ':target_component (target_component msg))
    (cl:cons ':command (command msg))
    (cl:cons ':confirmation (confirmation msg))
    (cl:cons ':param1 (param1 msg))
    (cl:cons ':param2 (param2 msg))
    (cl:cons ':param3 (param3 msg))
    (cl:cons ':param4 (param4 msg))
    (cl:cons ':param5 (param5 msg))
    (cl:cons ':param6 (param6 msg))
    (cl:cons ':param7 (param7 msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
    (cl:cons ':target_system_id (target_system_id msg))
))
