; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude Attitude.msg.html

(cl:defclass <Attitude> (roslisp-msg-protocol:ros-message)
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
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (rollspeed
    :reader rollspeed
    :initarg :rollspeed
    :type cl:float
    :initform 0.0)
   (pitchspeed
    :reader pitchspeed
    :initarg :pitchspeed
    :type cl:float
    :initform 0.0)
   (yawspeed
    :reader yawspeed
    :initarg :yawspeed
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

(cl:defclass Attitude (<Attitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Attitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Attitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<Attitude> is deprecated: use ros_mavlink_proxy-msg:Attitude instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_boot_ms-val :lambda-list '(m))
(cl:defmethod time_boot_ms-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:time_boot_ms-val is deprecated.  Use ros_mavlink_proxy-msg:time_boot_ms instead.")
  (time_boot_ms m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:roll-val is deprecated.  Use ros_mavlink_proxy-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:pitch-val is deprecated.  Use ros_mavlink_proxy-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:yaw-val is deprecated.  Use ros_mavlink_proxy-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'rollspeed-val :lambda-list '(m))
(cl:defmethod rollspeed-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:rollspeed-val is deprecated.  Use ros_mavlink_proxy-msg:rollspeed instead.")
  (rollspeed m))

(cl:ensure-generic-function 'pitchspeed-val :lambda-list '(m))
(cl:defmethod pitchspeed-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:pitchspeed-val is deprecated.  Use ros_mavlink_proxy-msg:pitchspeed instead.")
  (pitchspeed m))

(cl:ensure-generic-function 'yawspeed-val :lambda-list '(m))
(cl:defmethod yawspeed-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:yawspeed-val is deprecated.  Use ros_mavlink_proxy-msg:yawspeed instead.")
  (yawspeed m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))

(cl:ensure-generic-function 'target_system_id-val :lambda-list '(m))
(cl:defmethod target_system_id-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:target_system_id instead.")
  (target_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Attitude>) ostream)
  "Serializes a message object of type '<Attitude>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rollspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitchspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yawspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Attitude>) istream)
  "Deserializes a message object of type '<Attitude>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rollspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitchspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Attitude>)))
  "Returns string type for a message object of type '<Attitude>"
  "ros_mavlink_proxy/Attitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Attitude)))
  "Returns string type for a message object of type 'Attitude"
  "ros_mavlink_proxy/Attitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Attitude>)))
  "Returns md5sum for a message object of type '<Attitude>"
  "ac2d717021150553bfe16ffa8c2170f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Attitude)))
  "Returns md5sum for a message object of type 'Attitude"
  "ac2d717021150553bfe16ffa8c2170f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Attitude>)))
  "Returns full string definition for message of type '<Attitude>"
  (cl:format cl:nil "# Message for ATTITUDE ( #30 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%~%uint32 time_boot_ms	#ms	Timestamp (time since system boot).~%float32 roll		#rad	Roll angle (-pi..+pi)~%float32 pitch		#rad	Pitch angle (-pi..+pi)~%float32 yaw		#rad	Yaw angle (-pi..+pi)~%float32 rollspeed		#rad/s	Roll angular speed~%float32 pitchspeed	#rad/s	Pitch angular speed~%float32 yawspeed		#rad/s	Yaw angular speed~%~%uint8 origin_system_id~%uint8 target_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Attitude)))
  "Returns full string definition for message of type 'Attitude"
  (cl:format cl:nil "# Message for ATTITUDE ( #30 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%~%uint32 time_boot_ms	#ms	Timestamp (time since system boot).~%float32 roll		#rad	Roll angle (-pi..+pi)~%float32 pitch		#rad	Pitch angle (-pi..+pi)~%float32 yaw		#rad	Yaw angle (-pi..+pi)~%float32 rollspeed		#rad/s	Roll angular speed~%float32 pitchspeed	#rad/s	Pitch angular speed~%float32 yawspeed		#rad/s	Yaw angular speed~%~%uint8 origin_system_id~%uint8 target_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Attitude>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Attitude>))
  "Converts a ROS message object to a list"
  (cl:list 'Attitude
    (cl:cons ':header (header msg))
    (cl:cons ':time_boot_ms (time_boot_ms msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':rollspeed (rollspeed msg))
    (cl:cons ':pitchspeed (pitchspeed msg))
    (cl:cons ':yawspeed (yawspeed msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
    (cl:cons ':target_system_id (target_system_id msg))
))
