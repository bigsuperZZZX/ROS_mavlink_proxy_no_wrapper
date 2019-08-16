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

class Heartbeat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.autopilot = null;
      this.base_mode = null;
      this.custom_mode = null;
      this.system_status = null;
      this.mavlink_version = null;
      this.origin_system_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('autopilot')) {
        this.autopilot = initObj.autopilot
      }
      else {
        this.autopilot = 0;
      }
      if (initObj.hasOwnProperty('base_mode')) {
        this.base_mode = initObj.base_mode
      }
      else {
        this.base_mode = 0;
      }
      if (initObj.hasOwnProperty('custom_mode')) {
        this.custom_mode = initObj.custom_mode
      }
      else {
        this.custom_mode = 0;
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
      if (initObj.hasOwnProperty('mavlink_version')) {
        this.mavlink_version = initObj.mavlink_version
      }
      else {
        this.mavlink_version = 0;
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
    // Serializes a message object of type Heartbeat
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [autopilot]
    bufferOffset = _serializer.uint8(obj.autopilot, buffer, bufferOffset);
    // Serialize message field [base_mode]
    bufferOffset = _serializer.uint8(obj.base_mode, buffer, bufferOffset);
    // Serialize message field [custom_mode]
    bufferOffset = _serializer.uint32(obj.custom_mode, buffer, bufferOffset);
    // Serialize message field [system_status]
    bufferOffset = _serializer.uint8(obj.system_status, buffer, bufferOffset);
    // Serialize message field [mavlink_version]
    bufferOffset = _serializer.uint8(obj.mavlink_version, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Heartbeat
    let len;
    let data = new Heartbeat(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [autopilot]
    data.autopilot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_mode]
    data.base_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [custom_mode]
    data.custom_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [system_status]
    data.system_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mavlink_version]
    data.mavlink_version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/Heartbeat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cde59cd898d4476dd26d5124e92dc91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for HEARTBEAT ( #0 )
    # zxzxzxzx
    
    std_msgs/Header header
    
    uint8 type			#Vehicle or component type. For a flight controller component the vehicle type (quadrotor, helicopter, etc.). For other components the component type (e.g. camera, gimbal, etc.). This should be used in preference to component id for identifying the component type.
    uint8 autopilot		#Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components that are not flight controllers.
    uint8 base_mode		#System mode bitmap.
    uint32 custom_mode		#A bitfield for use for autopilot-specific flags
    uint8 system_status		#System status flag.
    uint8 mavlink_version		#MAVLink version, not writable by user, gets added by protocol because of magic data type: uint8_t_mavlink_version
    
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
    const resolved = new Heartbeat(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.autopilot !== undefined) {
      resolved.autopilot = msg.autopilot;
    }
    else {
      resolved.autopilot = 0
    }

    if (msg.base_mode !== undefined) {
      resolved.base_mode = msg.base_mode;
    }
    else {
      resolved.base_mode = 0
    }

    if (msg.custom_mode !== undefined) {
      resolved.custom_mode = msg.custom_mode;
    }
    else {
      resolved.custom_mode = 0
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

    if (msg.mavlink_version !== undefined) {
      resolved.mavlink_version = msg.mavlink_version;
    }
    else {
      resolved.mavlink_version = 0
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

module.exports = Heartbeat;
