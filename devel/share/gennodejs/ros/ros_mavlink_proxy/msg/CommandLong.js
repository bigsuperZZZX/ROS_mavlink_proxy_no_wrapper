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

class CommandLong {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.target_system = null;
      this.target_component = null;
      this.command = null;
      this.confirmation = null;
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.param5 = null;
      this.param6 = null;
      this.param7 = null;
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
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('confirmation')) {
        this.confirmation = initObj.confirmation
      }
      else {
        this.confirmation = 0;
      }
      if (initObj.hasOwnProperty('param1')) {
        this.param1 = initObj.param1
      }
      else {
        this.param1 = 0.0;
      }
      if (initObj.hasOwnProperty('param2')) {
        this.param2 = initObj.param2
      }
      else {
        this.param2 = 0.0;
      }
      if (initObj.hasOwnProperty('param3')) {
        this.param3 = initObj.param3
      }
      else {
        this.param3 = 0.0;
      }
      if (initObj.hasOwnProperty('param4')) {
        this.param4 = initObj.param4
      }
      else {
        this.param4 = 0.0;
      }
      if (initObj.hasOwnProperty('param5')) {
        this.param5 = initObj.param5
      }
      else {
        this.param5 = 0.0;
      }
      if (initObj.hasOwnProperty('param6')) {
        this.param6 = initObj.param6
      }
      else {
        this.param6 = 0.0;
      }
      if (initObj.hasOwnProperty('param7')) {
        this.param7 = initObj.param7
      }
      else {
        this.param7 = 0.0;
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
    // Serializes a message object of type CommandLong
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [target_system]
    bufferOffset = _serializer.uint8(obj.target_system, buffer, bufferOffset);
    // Serialize message field [target_component]
    bufferOffset = _serializer.uint8(obj.target_component, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint16(obj.command, buffer, bufferOffset);
    // Serialize message field [confirmation]
    bufferOffset = _serializer.uint8(obj.confirmation, buffer, bufferOffset);
    // Serialize message field [param1]
    bufferOffset = _serializer.float32(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.float32(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.float32(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.float32(obj.param4, buffer, bufferOffset);
    // Serialize message field [param5]
    bufferOffset = _serializer.float32(obj.param5, buffer, bufferOffset);
    // Serialize message field [param6]
    bufferOffset = _serializer.float32(obj.param6, buffer, bufferOffset);
    // Serialize message field [param7]
    bufferOffset = _serializer.float32(obj.param7, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    // Serialize message field [target_system_id]
    bufferOffset = _serializer.uint8(obj.target_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandLong
    let len;
    let data = new CommandLong(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_system]
    data.target_system = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_component]
    data.target_component = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [confirmation]
    data.confirmation = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [param1]
    data.param1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param5]
    data.param5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param6]
    data.param6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param7]
    data.param7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_system_id]
    data.target_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/CommandLong';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa6caa6eedcb0ef38370683dbbc48671';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for COMMAND_LONG ( #76 )
    # zxzxzxzx
    
    std_msgs/Header header
    
    
    uint8 target_system
    uint8 target_component	#Component which should execute the command, 0 for all components
    uint16 command		#Command ID (of command to send).
    uint8 confirmation		#0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command)
    float32 param1			#Parameter 1 (for the specific command).
    float32 param2			#Parameter 2 (for the specific command).
    float32 param3			#Parameter 3 (for the specific command).
    float32 param4			#Parameter 4 (for the specific command).
    float32 param5			#Parameter 5 (for the specific command).
    float32 param6			#Parameter 6 (for the specific command).
    float32 param7			#Parameter 7 (for the specific command).
    
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
    const resolved = new CommandLong(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.confirmation !== undefined) {
      resolved.confirmation = msg.confirmation;
    }
    else {
      resolved.confirmation = 0
    }

    if (msg.param1 !== undefined) {
      resolved.param1 = msg.param1;
    }
    else {
      resolved.param1 = 0.0
    }

    if (msg.param2 !== undefined) {
      resolved.param2 = msg.param2;
    }
    else {
      resolved.param2 = 0.0
    }

    if (msg.param3 !== undefined) {
      resolved.param3 = msg.param3;
    }
    else {
      resolved.param3 = 0.0
    }

    if (msg.param4 !== undefined) {
      resolved.param4 = msg.param4;
    }
    else {
      resolved.param4 = 0.0
    }

    if (msg.param5 !== undefined) {
      resolved.param5 = msg.param5;
    }
    else {
      resolved.param5 = 0.0
    }

    if (msg.param6 !== undefined) {
      resolved.param6 = msg.param6;
    }
    else {
      resolved.param6 = 0.0
    }

    if (msg.param7 !== undefined) {
      resolved.param7 = msg.param7;
    }
    else {
      resolved.param7 = 0.0
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

module.exports = CommandLong;
