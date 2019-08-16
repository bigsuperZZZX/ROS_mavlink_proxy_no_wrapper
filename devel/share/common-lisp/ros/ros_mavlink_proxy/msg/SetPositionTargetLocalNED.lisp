; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude SetPositionTargetLocalNED.msg.html

(cl:defclass <SetPositionTargetLocalNED> (roslisp-msg-protocol:ros-message)
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
   (coordinate_frame
    :reader coordinate_frame
    :initarg :coordinate_frame
    :type cl:fixnum
    :initform 0)
   (type_mask
    :reader type_mask
    :initarg :type_mask
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:float
    :initform 0.0)
   (afx
    :reader afx
    :initarg :afx
    :type cl:float
    :initform 0.0)
   (afy
    :reader afy
    :initarg :afy
    :type cl:float
    :initform 0.0)
   (afz
    :reader afz
    :initarg :afz
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (origin_system_id
    :reader origin_system_id
    :initarg :origin_system_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetPositionTargetLocalNED (<SetPositionTargetLocalNED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPositionTargetLocalNED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPositionTargetLocalNED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<SetPositionTargetLocalNED> is deprecated: use ros_mavlink_proxy-msg:SetPositionTargetLocalNED instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_boot_ms-val :lambda-list '(m))
(cl:defmethod time_boot_ms-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:time_boot_ms-val is deprecated.  Use ros_mavlink_proxy-msg:time_boot_ms instead.")
  (time_boot_ms m))

(cl:ensure-generic-function 'target_system-val :lambda-list '(m))
(cl:defmethod target_system-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_system-val is deprecated.  Use ros_mavlink_proxy-msg:target_system instead.")
  (target_system m))

(cl:ensure-generic-function 'target_component-val :lambda-list '(m))
(cl:defmethod target_component-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:target_component-val is deprecated.  Use ros_mavlink_proxy-msg:target_component instead.")
  (target_component m))

(cl:ensure-generic-function 'coordinate_frame-val :lambda-list '(m))
(cl:defmethod coordinate_frame-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:coordinate_frame-val is deprecated.  Use ros_mavlink_proxy-msg:coordinate_frame instead.")
  (coordinate_frame m))

(cl:ensure-generic-function 'type_mask-val :lambda-list '(m))
(cl:defmethod type_mask-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:type_mask-val is deprecated.  Use ros_mavlink_proxy-msg:type_mask instead.")
  (type_mask m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:x-val is deprecated.  Use ros_mavlink_proxy-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:y-val is deprecated.  Use ros_mavlink_proxy-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:z-val is deprecated.  Use ros_mavlink_proxy-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:vx-val is deprecated.  Use ros_mavlink_proxy-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:vy-val is deprecated.  Use ros_mavlink_proxy-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:vz-val is deprecated.  Use ros_mavlink_proxy-msg:vz instead.")
  (vz m))

(cl:ensure-generic-function 'afx-val :lambda-list '(m))
(cl:defmethod afx-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:afx-val is deprecated.  Use ros_mavlink_proxy-msg:afx instead.")
  (afx m))

(cl:ensure-generic-function 'afy-val :lambda-list '(m))
(cl:defmethod afy-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:afy-val is deprecated.  Use ros_mavlink_proxy-msg:afy instead.")
  (afy m))

(cl:ensure-generic-function 'afz-val :lambda-list '(m))
(cl:defmethod afz-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:afz-val is deprecated.  Use ros_mavlink_proxy-msg:afz instead.")
  (afz m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:yaw-val is deprecated.  Use ros_mavlink_proxy-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:yaw_rate-val is deprecated.  Use ros_mavlink_proxy-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <SetPositionTargetLocalNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPositionTargetLocalNED>) ostream)
  "Serializes a message object of type '<SetPositionTargetLocalNED>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_component)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_mask)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'afx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'afy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'afz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPositionTargetLocalNED>) istream)
  "Deserializes a message object of type '<SetPositionTargetLocalNED>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_component)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_mask)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'afx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'afy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'afz) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPositionTargetLocalNED>)))
  "Returns string type for a message object of type '<SetPositionTargetLocalNED>"
  "ros_mavlink_proxy/SetPositionTargetLocalNED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositionTargetLocalNED)))
  "Returns string type for a message object of type 'SetPositionTargetLocalNED"
  "ros_mavlink_proxy/SetPositionTargetLocalNED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPositionTargetLocalNED>)))
  "Returns md5sum for a message object of type '<SetPositionTargetLocalNED>"
  "3b8a5a72650c18aafb7440081d6b074e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPositionTargetLocalNED)))
  "Returns md5sum for a message object of type 'SetPositionTargetLocalNED"
  "3b8a5a72650c18aafb7440081d6b074e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPositionTargetLocalNED>)))
  "Returns full string definition for message of type '<SetPositionTargetLocalNED>"
  (cl:format cl:nil "# Message for SET_POSITION_TARGET_LOCAL_NED ( #84 )~%# \"NED\" is the name of a coordinate system~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint32 time_boot_ms       #ms		Timestamp (time since system boot).~%uint8 target_system       #		System ID~%uint8 target_component    #		Component ID~%uint8 coordinate_frame    #       	Valid options are: MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8, MAV_FRAME_BODY_OFFSET_NED = 9~%uint16 type_mask          #		POSITION_TARGET_TYPEMASK	Bitmap to indicate which dimensions should be ignored by the vehicle.~%float32 x                     #m		X Position in NED frame~%float32 y                     #m		Y Position in NED frame~%float32 z                     #m		Z Position in NED frame (note, altitude is negative in NED)~%float32 vx                    #m/s	X velocity in NED frame~%float32 vy                    #m/s	Y velocity in NED frame~%float32 vz                    #m/s	Z velocity in NED frame~%float32 afx                   #m/s/s	X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N~%float32 afy                   #m/s/s	Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N~%float32 afz                   #m/s/s	Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N~%float32 yaw                   #rad	yaw setpoint~%float32 yaw_rate              #rad/s	yaw rate setpoint~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPositionTargetLocalNED)))
  "Returns full string definition for message of type 'SetPositionTargetLocalNED"
  (cl:format cl:nil "# Message for SET_POSITION_TARGET_LOCAL_NED ( #84 )~%# \"NED\" is the name of a coordinate system~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint32 time_boot_ms       #ms		Timestamp (time since system boot).~%uint8 target_system       #		System ID~%uint8 target_component    #		Component ID~%uint8 coordinate_frame    #       	Valid options are: MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8, MAV_FRAME_BODY_OFFSET_NED = 9~%uint16 type_mask          #		POSITION_TARGET_TYPEMASK	Bitmap to indicate which dimensions should be ignored by the vehicle.~%float32 x                     #m		X Position in NED frame~%float32 y                     #m		Y Position in NED frame~%float32 z                     #m		Z Position in NED frame (note, altitude is negative in NED)~%float32 vx                    #m/s	X velocity in NED frame~%float32 vy                    #m/s	Y velocity in NED frame~%float32 vz                    #m/s	Z velocity in NED frame~%float32 afx                   #m/s/s	X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N~%float32 afy                   #m/s/s	Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N~%float32 afz                   #m/s/s	Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N~%float32 yaw                   #rad	yaw setpoint~%float32 yaw_rate              #rad/s	yaw rate setpoint~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPositionTargetLocalNED>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     1
     2
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPositionTargetLocalNED>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPositionTargetLocalNED
    (cl:cons ':header (header msg))
    (cl:cons ':time_boot_ms (time_boot_ms msg))
    (cl:cons ':target_system (target_system msg))
    (cl:cons ':target_component (target_component msg))
    (cl:cons ':coordinate_frame (coordinate_frame msg))
    (cl:cons ':type_mask (type_mask msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':afx (afx msg))
    (cl:cons ':afy (afy msg))
    (cl:cons ':afz (afz msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
))
