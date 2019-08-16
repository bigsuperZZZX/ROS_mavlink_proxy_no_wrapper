; Auto-generated. Do not edit!


(cl:in-package ros_mavlink_proxy-msg)


;//! \htmlinclude HighresIMU.msg.html

(cl:defclass <HighresIMU> (roslisp-msg-protocol:ros-message)
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
   (xacc
    :reader xacc
    :initarg :xacc
    :type cl:float
    :initform 0.0)
   (yacc
    :reader yacc
    :initarg :yacc
    :type cl:float
    :initform 0.0)
   (zacc
    :reader zacc
    :initarg :zacc
    :type cl:float
    :initform 0.0)
   (xgyro
    :reader xgyro
    :initarg :xgyro
    :type cl:float
    :initform 0.0)
   (ygyro
    :reader ygyro
    :initarg :ygyro
    :type cl:float
    :initform 0.0)
   (zgyro
    :reader zgyro
    :initarg :zgyro
    :type cl:float
    :initform 0.0)
   (xmag
    :reader xmag
    :initarg :xmag
    :type cl:float
    :initform 0.0)
   (ymag
    :reader ymag
    :initarg :ymag
    :type cl:float
    :initform 0.0)
   (zmag
    :reader zmag
    :initarg :zmag
    :type cl:float
    :initform 0.0)
   (abs_pressure
    :reader abs_pressure
    :initarg :abs_pressure
    :type cl:float
    :initform 0.0)
   (diff_pressure
    :reader diff_pressure
    :initarg :diff_pressure
    :type cl:float
    :initform 0.0)
   (pressure_alt
    :reader pressure_alt
    :initarg :pressure_alt
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (fields_updated
    :reader fields_updated
    :initarg :fields_updated
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (origin_system_id
    :reader origin_system_id
    :initarg :origin_system_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HighresIMU (<HighresIMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighresIMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighresIMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_mavlink_proxy-msg:<HighresIMU> is deprecated: use ros_mavlink_proxy-msg:HighresIMU instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:header-val is deprecated.  Use ros_mavlink_proxy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_usec-val :lambda-list '(m))
(cl:defmethod time_usec-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:time_usec-val is deprecated.  Use ros_mavlink_proxy-msg:time_usec instead.")
  (time_usec m))

(cl:ensure-generic-function 'xacc-val :lambda-list '(m))
(cl:defmethod xacc-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:xacc-val is deprecated.  Use ros_mavlink_proxy-msg:xacc instead.")
  (xacc m))

(cl:ensure-generic-function 'yacc-val :lambda-list '(m))
(cl:defmethod yacc-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:yacc-val is deprecated.  Use ros_mavlink_proxy-msg:yacc instead.")
  (yacc m))

(cl:ensure-generic-function 'zacc-val :lambda-list '(m))
(cl:defmethod zacc-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:zacc-val is deprecated.  Use ros_mavlink_proxy-msg:zacc instead.")
  (zacc m))

(cl:ensure-generic-function 'xgyro-val :lambda-list '(m))
(cl:defmethod xgyro-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:xgyro-val is deprecated.  Use ros_mavlink_proxy-msg:xgyro instead.")
  (xgyro m))

(cl:ensure-generic-function 'ygyro-val :lambda-list '(m))
(cl:defmethod ygyro-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:ygyro-val is deprecated.  Use ros_mavlink_proxy-msg:ygyro instead.")
  (ygyro m))

(cl:ensure-generic-function 'zgyro-val :lambda-list '(m))
(cl:defmethod zgyro-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:zgyro-val is deprecated.  Use ros_mavlink_proxy-msg:zgyro instead.")
  (zgyro m))

(cl:ensure-generic-function 'xmag-val :lambda-list '(m))
(cl:defmethod xmag-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:xmag-val is deprecated.  Use ros_mavlink_proxy-msg:xmag instead.")
  (xmag m))

(cl:ensure-generic-function 'ymag-val :lambda-list '(m))
(cl:defmethod ymag-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:ymag-val is deprecated.  Use ros_mavlink_proxy-msg:ymag instead.")
  (ymag m))

(cl:ensure-generic-function 'zmag-val :lambda-list '(m))
(cl:defmethod zmag-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:zmag-val is deprecated.  Use ros_mavlink_proxy-msg:zmag instead.")
  (zmag m))

(cl:ensure-generic-function 'abs_pressure-val :lambda-list '(m))
(cl:defmethod abs_pressure-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:abs_pressure-val is deprecated.  Use ros_mavlink_proxy-msg:abs_pressure instead.")
  (abs_pressure m))

(cl:ensure-generic-function 'diff_pressure-val :lambda-list '(m))
(cl:defmethod diff_pressure-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:diff_pressure-val is deprecated.  Use ros_mavlink_proxy-msg:diff_pressure instead.")
  (diff_pressure m))

(cl:ensure-generic-function 'pressure_alt-val :lambda-list '(m))
(cl:defmethod pressure_alt-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:pressure_alt-val is deprecated.  Use ros_mavlink_proxy-msg:pressure_alt instead.")
  (pressure_alt m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:temperature-val is deprecated.  Use ros_mavlink_proxy-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'fields_updated-val :lambda-list '(m))
(cl:defmethod fields_updated-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:fields_updated-val is deprecated.  Use ros_mavlink_proxy-msg:fields_updated instead.")
  (fields_updated m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:id-val is deprecated.  Use ros_mavlink_proxy-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'origin_system_id-val :lambda-list '(m))
(cl:defmethod origin_system_id-val ((m <HighresIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_mavlink_proxy-msg:origin_system_id-val is deprecated.  Use ros_mavlink_proxy-msg:origin_system_id instead.")
  (origin_system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighresIMU>) ostream)
  "Serializes a message object of type '<HighresIMU>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_usec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_usec)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xacc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yacc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zacc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xgyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ygyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zgyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xmag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ymag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zmag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'abs_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure_alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fields_updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fields_updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighresIMU>) istream)
  "Deserializes a message object of type '<HighresIMU>"
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
    (cl:setf (cl:slot-value msg 'xacc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yacc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zacc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xgyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ygyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zgyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xmag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ymag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'abs_pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure_alt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fields_updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fields_updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighresIMU>)))
  "Returns string type for a message object of type '<HighresIMU>"
  "ros_mavlink_proxy/HighresIMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighresIMU)))
  "Returns string type for a message object of type 'HighresIMU"
  "ros_mavlink_proxy/HighresIMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighresIMU>)))
  "Returns md5sum for a message object of type '<HighresIMU>"
  "02e220874ef254dd246c5482f83c54a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighresIMU)))
  "Returns md5sum for a message object of type 'HighresIMU"
  "02e220874ef254dd246c5482f83c54a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighresIMU>)))
  "Returns full string definition for message of type '<HighresIMU>"
  (cl:format cl:nil "# Message for HIGHRES_IMU ( #105 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint64 time_usec	#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.~%float32 xacc		#m/s/s	X acceleration~%float32 yacc		#m/s/s	Y acceleration~%float32 zacc		#m/s/s	Z acceleration~%float32 xgyro		#rad/s	Angular speed around X axis~%float32 ygyro		#rad/s	Angular speed around Y axis~%float32 zgyro		#rad/s	Angular speed around Z axis~%float32 xmag		#gauss	X Magnetic field~%float32 ymag		#gauss	Y Magnetic field~%float32 zmag		#gauss	Z Magnetic field~%float32 abs_pressure	#mbar	Absolute pressure~%float32 diff_pressure	#mbar	Differential pressure~%float32 pressure_alt	#	Altitude calculated from pressure~%float32 temperature	#degC	Temperature~%uint16 fields_updated	#	Bitmap for fields that have updated since last message, bit 0 = xacc, bit 12: temperature~%uint8 id 		#       Id. Ids are numbered from 0 and map to IMUs numbered from 1 (e.g. IMU1 will have a message with id=0)~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighresIMU)))
  "Returns full string definition for message of type 'HighresIMU"
  (cl:format cl:nil "# Message for HIGHRES_IMU ( #105 )~%# zxzxzxzx~%~%std_msgs/Header header~%~%uint64 time_usec	#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.~%float32 xacc		#m/s/s	X acceleration~%float32 yacc		#m/s/s	Y acceleration~%float32 zacc		#m/s/s	Z acceleration~%float32 xgyro		#rad/s	Angular speed around X axis~%float32 ygyro		#rad/s	Angular speed around Y axis~%float32 zgyro		#rad/s	Angular speed around Z axis~%float32 xmag		#gauss	X Magnetic field~%float32 ymag		#gauss	Y Magnetic field~%float32 zmag		#gauss	Z Magnetic field~%float32 abs_pressure	#mbar	Absolute pressure~%float32 diff_pressure	#mbar	Differential pressure~%float32 pressure_alt	#	Altitude calculated from pressure~%float32 temperature	#degC	Temperature~%uint16 fields_updated	#	Bitmap for fields that have updated since last message, bit 0 = xacc, bit 12: temperature~%uint8 id 		#       Id. Ids are numbered from 0 and map to IMUs numbered from 1 (e.g. IMU1 will have a message with id=0)~%~%uint8 origin_system_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighresIMU>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
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
     4
     4
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighresIMU>))
  "Converts a ROS message object to a list"
  (cl:list 'HighresIMU
    (cl:cons ':header (header msg))
    (cl:cons ':time_usec (time_usec msg))
    (cl:cons ':xacc (xacc msg))
    (cl:cons ':yacc (yacc msg))
    (cl:cons ':zacc (zacc msg))
    (cl:cons ':xgyro (xgyro msg))
    (cl:cons ':ygyro (ygyro msg))
    (cl:cons ':zgyro (zgyro msg))
    (cl:cons ':xmag (xmag msg))
    (cl:cons ':ymag (ymag msg))
    (cl:cons ':zmag (zmag msg))
    (cl:cons ':abs_pressure (abs_pressure msg))
    (cl:cons ':diff_pressure (diff_pressure msg))
    (cl:cons ':pressure_alt (pressure_alt msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':fields_updated (fields_updated msg))
    (cl:cons ':id (id msg))
    (cl:cons ':origin_system_id (origin_system_id msg))
))
