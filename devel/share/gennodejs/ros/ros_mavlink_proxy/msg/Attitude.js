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

class Attitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_boot_ms = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.rollspeed = null;
      this.pitchspeed = null;
      this.yawspeed = null;
      this.origin_system_id = null;
      this.target_system_id = null;
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
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('rollspeed')) {
        this.rollspeed = initObj.rollspeed
      }
      else {
        this.rollspeed = 0.0;
      }
      if (initObj.hasOwnProperty('pitchspeed')) {
        this.pitchspeed = initObj.pitchspeed
      }
      else {
        this.pitchspeed = 0.0;
      }
      if (initObj.hasOwnProperty('yawspeed')) {
        this.yawspeed = initObj.yawspeed
      }
      else {
        this.yawspeed = 0.0;
      }
      if (initObj.hasOwnProperty('origin_system_id')) {
        this.origin_system_id = initObj.origin_system_id
      }
      else {
        this.origin_system_id = 0;
      }
      if (initObj.hasOwnProperty('target_system_id')) {
        this.target_system_id = initObj.target_system_id
      }
      else {
        this.target_system_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Attitude
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_boot_ms]
    bufferOffset = _serializer.uint32(obj.time_boot_ms, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [rollspeed]
    bufferOffset = _serializer.float32(obj.rollspeed, buffer, bufferOffset);
    // Serialize message field [pitchspeed]
    bufferOffset = _serializer.float32(obj.pitchspeed, buffer, bufferOffset);
    // Serialize message field [yawspeed]
    bufferOffset = _serializer.float32(obj.yawspeed, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    // Serialize message field [target_system_id]
    bufferOffset = _serializer.uint8(obj.target_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Attitude
    let len;
    let data = new Attitude(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_boot_ms]
    data.time_boot_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rollspeed]
    data.rollspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitchspeed]
    data.pitchspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yawspeed]
    data.yawspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_system_id]
    data.target_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/Attitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac2d717021150553bfe16ffa8c2170f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for ATTITUDE ( #30 )
    # zxzxzxzx
    
    std_msgs/Header header
    
    
    uint32 time_boot_ms	#ms	Timestamp (time since system boot).
    float32 roll		#rad	Roll angle (-pi..+pi)
    float32 pitch		#rad	Pitch angle (-pi..+pi)
    float32 yaw		#rad	Yaw angle (-pi..+pi)
    float32 rollspeed		#rad/s	Roll angular speed
    float32 pitchspeed	#rad/s	Pitch angular speed
    float32 yawspeed		#rad/s	Yaw angular speed
    
    uint8 origin_system_id
    uint8 target_system_id
    
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
    const resolved = new Attitude(null);
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

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.rollspeed !== undefined) {
      resolved.rollspeed = msg.rollspeed;
    }
    else {
      resolved.rollspeed = 0.0
    }

    if (msg.pitchspeed !== undefined) {
      resolved.pitchspeed = msg.pitchspeed;
    }
    else {
      resolved.pitchspeed = 0.0
    }

    if (msg.yawspeed !== undefined) {
      resolved.yawspeed = msg.yawspeed;
    }
    else {
      resolved.yawspeed = 0.0
    }

    if (msg.origin_system_id !== undefined) {
      resolved.origin_system_id = msg.origin_system_id;
    }
    else {
      resolved.origin_system_id = 0
    }

    if (msg.target_system_id !== undefined) {
      resolved.target_system_id = msg.target_system_id;
    }
    else {
      resolved.target_system_id = 0
    }

    return resolved;
    }
};

module.exports = Attitude;
