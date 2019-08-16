// Auto-generated. Do not edit!

// (in-package ros_mavlink_proxy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SetPositionTargetGlobalINT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_boot_ms = null;
      this.target_system = null;
      this.target_component = null;
      this.coordinate_frame = null;
      this.type_mask = null;
      this.lat_int = null;
      this.lon_int = null;
      this.alt = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.afx = null;
      this.afy = null;
      this.afz = null;
      this.yaw = null;
      this.yaw_rate = null;
      this.origin_system_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_boot_ms')) {
        this.time_boot_ms = initObj.time_boot_ms
      }
      else {
        this.time_boot_ms = 0;
      }
      if (initObj.hasOwnProperty('target_system')) {
        this.target_system = initObj.target_system
      }
      else {
        this.target_system = 0;
      }
      if (initObj.hasOwnProperty('target_component')) {
        this.target_component = initObj.target_component
      }
      else {
        this.target_component = 0;
      }
      if (initObj.hasOwnProperty('coordinate_frame')) {
        this.coordinate_frame = initObj.coordinate_frame
      }
      else {
        this.coordinate_frame = 0;
      }
      if (initObj.hasOwnProperty('type_mask')) {
        this.type_mask = initObj.type_mask
      }
      else {
        this.type_mask = 0;
      }
      if (initObj.hasOwnProperty('lat_int')) {
        this.lat_int = initObj.lat_int
      }
      else {
        this.lat_int = 0;
      }
      if (initObj.hasOwnProperty('lon_int')) {
        this.lon_int = initObj.lon_int
      }
      else {
        this.lon_int = 0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
      if (initObj.hasOwnProperty('afx')) {
        this.afx = initObj.afx
      }
      else {
        this.afx = 0.0;
      }
      if (initObj.hasOwnProperty('afy')) {
        this.afy = initObj.afy
      }
      else {
        this.afy = 0.0;
      }
      if (initObj.hasOwnProperty('afz')) {
        this.afz = initObj.afz
      }
      else {
        this.afz = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('origin_system_id')) {
        this.origin_system_id = initObj.origin_system_id
      }
      else {
        this.origin_system_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPositionTargetGlobalINT
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_boot_ms]
    bufferOffset = _serializer.uint32(obj.time_boot_ms, buffer, bufferOffset);
    // Serialize message field [target_system]
    bufferOffset = _serializer.uint8(obj.target_system, buffer, bufferOffset);
    // Serialize message field [target_component]
    bufferOffset = _serializer.uint8(obj.target_component, buffer, bufferOffset);
    // Serialize message field [coordinate_frame]
    bufferOffset = _serializer.uint8(obj.coordinate_frame, buffer, bufferOffset);
    // Serialize message field [type_mask]
    bufferOffset = _serializer.uint16(obj.type_mask, buffer, bufferOffset);
    // Serialize message field [lat_int]
    bufferOffset = _serializer.int32(obj.lat_int, buffer, bufferOffset);
    // Serialize message field [lon_int]
    bufferOffset = _serializer.int32(obj.lon_int, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float32(obj.alt, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float32(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float32(obj.vz, buffer, bufferOffset);
    // Serialize message field [afx]
    bufferOffset = _serializer.float32(obj.afx, buffer, bufferOffset);
    // Serialize message field [afy]
    bufferOffset = _serializer.float32(obj.afy, buffer, bufferOffset);
    // Serialize message field [afz]
    bufferOffset = _serializer.float32(obj.afz, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float32(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPositionTargetGlobalINT
    let len;
    let data = new SetPositionTargetGlobalINT(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_boot_ms]
    data.time_boot_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [target_system]
    data.target_system = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_component]
    data.target_component = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [coordinate_frame]
    data.coordinate_frame = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type_mask]
    data.type_mask = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [lat_int]
    data.lat_int = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lon_int]
    data.lon_int = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [afx]
    data.afx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [afy]
    data.afy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [afz]
    data.afz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/SetPositionTargetGlobalINT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a05b877f670b45909e756be5c21b8f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for SET_POSITION_TARGET_GLOBAL_INT ( #86 )
    # "INT" is the name of a coordinate system
    # zxzxzxzx
    
    std_msgs/Header header
    
    uint32 time_boot_ms       #ms		Timestamp (time since system boot). The rationale for the timestamp in the setpoint is to allow the system to compensate for the transport delay of the setpoint. This allows the system to compensate processing latency.
    uint8 target_system       #		System ID
    uint8 target_component    #		Component ID
    uint8 coordinate_frame    #		Valid options are: MAV_FRAME_GLOBAL_INT = 5, MAV_FRAME_GLOBAL_RELATIVE_ALT_INT = 6, MAV_FRAME_GLOBAL_TERRAIN_ALT_INT = 11
    uint16 type_mask          #		Bitmap to indicate which dimensions should be ignored by the vehicle.
    int32 lat_int             #degE7	X Position in WGS84 frame
    int32 lon_int             #degE7	Y Position in WGS84 frame
    float32 alt                   #m		Altitude (MSL, Relative to home, or AGL - depending on frame)
    float32 vx                    #m/s	X velocity in NED frame
    float32 vy                    #m/s	Y velocity in NED frame
    float32 vz                    #m/s	Z velocity in NED frame
    float32 afx                   #m/s/s	X acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
    float32 afy                   #m/s/s	Y acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
    float32 afz                   #m/s/s	Z acceleration or force (if bit 10 of type_mask is set) in NED frame in meter / s^2 or N
    float32 yaw                   #rad	yaw setpoint
    float32 yaw_rate              #rad/s	yaw rate setpoint
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPositionTargetGlobalINT(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_boot_ms !== undefined) {
      resolved.time_boot_ms = msg.time_boot_ms;
    }
    else {
      resolved.time_boot_ms = 0
    }

    if (msg.target_system !== undefined) {
      resolved.target_system = msg.target_system;
    }
    else {
      resolved.target_system = 0
    }

    if (msg.target_component !== undefined) {
      resolved.target_component = msg.target_component;
    }
    else {
      resolved.target_component = 0
    }

    if (msg.coordinate_frame !== undefined) {
      resolved.coordinate_frame = msg.coordinate_frame;
    }
    else {
      resolved.coordinate_frame = 0
    }

    if (msg.type_mask !== undefined) {
      resolved.type_mask = msg.type_mask;
    }
    else {
      resolved.type_mask = 0
    }

    if (msg.lat_int !== undefined) {
      resolved.lat_int = msg.lat_int;
    }
    else {
      resolved.lat_int = 0
    }

    if (msg.lon_int !== undefined) {
      resolved.lon_int = msg.lon_int;
    }
    else {
      resolved.lon_int = 0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    if (msg.afx !== undefined) {
      resolved.afx = msg.afx;
    }
    else {
      resolved.afx = 0.0
    }

    if (msg.afy !== undefined) {
      resolved.afy = msg.afy;
    }
    else {
      resolved.afy = 0.0
    }

    if (msg.afz !== undefined) {
      resolved.afz = msg.afz;
    }
    else {
      resolved.afz = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.origin_system_id !== undefined) {
      resolved.origin_system_id = msg.origin_system_id;
    }
    else {
      resolved.origin_system_id = 0
    }

    return resolved;
    }
};

module.exports = SetPositionTargetGlobalINT;
