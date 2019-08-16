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

class Altitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_usec = null;
      this.altitude_monotonic = null;
      this.altitude_amsl = null;
      this.altitude_local = null;
      this.altitude_relative = null;
      this.altitude_terrain = null;
      this.bottom_clearance = null;
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
      if (initObj.hasOwnProperty('time_usec')) {
        this.time_usec = initObj.time_usec
      }
      else {
        this.time_usec = 0;
      }
      if (initObj.hasOwnProperty('altitude_monotonic')) {
        this.altitude_monotonic = initObj.altitude_monotonic
      }
      else {
        this.altitude_monotonic = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_amsl')) {
        this.altitude_amsl = initObj.altitude_amsl
      }
      else {
        this.altitude_amsl = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_local')) {
        this.altitude_local = initObj.altitude_local
      }
      else {
        this.altitude_local = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_relative')) {
        this.altitude_relative = initObj.altitude_relative
      }
      else {
        this.altitude_relative = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_terrain')) {
        this.altitude_terrain = initObj.altitude_terrain
      }
      else {
        this.altitude_terrain = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_clearance')) {
        this.bottom_clearance = initObj.bottom_clearance
      }
      else {
        this.bottom_clearance = 0.0;
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
    // Serializes a message object of type Altitude
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_usec]
    bufferOffset = _serializer.uint64(obj.time_usec, buffer, bufferOffset);
    // Serialize message field [altitude_monotonic]
    bufferOffset = _serializer.float32(obj.altitude_monotonic, buffer, bufferOffset);
    // Serialize message field [altitude_amsl]
    bufferOffset = _serializer.float32(obj.altitude_amsl, buffer, bufferOffset);
    // Serialize message field [altitude_local]
    bufferOffset = _serializer.float32(obj.altitude_local, buffer, bufferOffset);
    // Serialize message field [altitude_relative]
    bufferOffset = _serializer.float32(obj.altitude_relative, buffer, bufferOffset);
    // Serialize message field [altitude_terrain]
    bufferOffset = _serializer.float32(obj.altitude_terrain, buffer, bufferOffset);
    // Serialize message field [bottom_clearance]
    bufferOffset = _serializer.float32(obj.bottom_clearance, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    // Serialize message field [target_system_id]
    bufferOffset = _serializer.uint8(obj.target_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Altitude
    let len;
    let data = new Altitude(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_usec]
    data.time_usec = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [altitude_monotonic]
    data.altitude_monotonic = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_amsl]
    data.altitude_amsl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_local]
    data.altitude_local = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_relative]
    data.altitude_relative = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_terrain]
    data.altitude_terrain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bottom_clearance]
    data.bottom_clearance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_system_id]
    data.target_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/Altitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68ad96eb6432bcb3e2b661f47f5f0f0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for ALTITUDE ( #141 )
    # zxzxzxzx
    
    std_msgs/Header header
    
    uint64 time_usec		#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
    float32 altitude_monotonic	#m	This altitude measure is initialized on system boot and monotonic (it is never reset, but represents the local altitude change). The only guarantee on this field is that it will never be reset and is consistent within a flight. The recommended value for this field is the uncorrected barometric altitude at boot time. This altitude will also drift and vary between flights.
    float32 altitude_amsl		#m	This altitude measure is strictly above mean sea level and might be non-monotonic (it might reset on events like GPS lock or when a new QNH value is set). It should be the altitude to which global altitude waypoints are compared to. Note that it is *not* the GPS altitude, however, most GPS modules already output MSL by default and not the WGS84 altitude.
    float32 altitude_local		#m	This is the local altitude in the local coordinate frame. It is not the altitude above home, but in reference to the coordinate origin (0, 0, 0). It is up-positive.
    float32 altitude_relative		#m	This is the altitude above the home position. It resets on each change of the current home position.
    float32 altitude_terrain		#m	This is the altitude above terrain. It might be fed by a terrain database or an altimeter. Values smaller than -1000 should be interpreted as unknown.
    float32 bottom_clearance		#m	This is not the altitude, but the clear space below the system according to the fused clearance estimate. It generally should max out at the maximum range of e.g. the laser altimeter. It is generally a moving target. A negative value indicates no measurement available.
    
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
    const resolved = new Altitude(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_usec !== undefined) {
      resolved.time_usec = msg.time_usec;
    }
    else {
      resolved.time_usec = 0
    }

    if (msg.altitude_monotonic !== undefined) {
      resolved.altitude_monotonic = msg.altitude_monotonic;
    }
    else {
      resolved.altitude_monotonic = 0.0
    }

    if (msg.altitude_amsl !== undefined) {
      resolved.altitude_amsl = msg.altitude_amsl;
    }
    else {
      resolved.altitude_amsl = 0.0
    }

    if (msg.altitude_local !== undefined) {
      resolved.altitude_local = msg.altitude_local;
    }
    else {
      resolved.altitude_local = 0.0
    }

    if (msg.altitude_relative !== undefined) {
      resolved.altitude_relative = msg.altitude_relative;
    }
    else {
      resolved.altitude_relative = 0.0
    }

    if (msg.altitude_terrain !== undefined) {
      resolved.altitude_terrain = msg.altitude_terrain;
    }
    else {
      resolved.altitude_terrain = 0.0
    }

    if (msg.bottom_clearance !== undefined) {
      resolved.bottom_clearance = msg.bottom_clearance;
    }
    else {
      resolved.bottom_clearance = 0.0
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

module.exports = Altitude;
