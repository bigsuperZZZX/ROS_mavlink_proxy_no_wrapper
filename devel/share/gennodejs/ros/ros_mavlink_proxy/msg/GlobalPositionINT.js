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

class GlobalPositionINT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_boot_ms = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.relative_alt = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.hdg = null;
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
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0;
      }
      if (initObj.hasOwnProperty('relative_alt')) {
        this.relative_alt = initObj.relative_alt
      }
      else {
        this.relative_alt = 0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0;
      }
      if (initObj.hasOwnProperty('hdg')) {
        this.hdg = initObj.hdg
      }
      else {
        this.hdg = 0;
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
    // Serializes a message object of type GlobalPositionINT
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_boot_ms]
    bufferOffset = _serializer.uint32(obj.time_boot_ms, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.int32(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.int32(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.int32(obj.alt, buffer, bufferOffset);
    // Serialize message field [relative_alt]
    bufferOffset = _serializer.int32(obj.relative_alt, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.int16(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.int16(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.int16(obj.vz, buffer, bufferOffset);
    // Serialize message field [hdg]
    bufferOffset = _serializer.uint16(obj.hdg, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalPositionINT
    let len;
    let data = new GlobalPositionINT(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_boot_ms]
    data.time_boot_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [relative_alt]
    data.relative_alt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hdg]
    data.hdg = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/GlobalPositionINT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cff51bdfb07d5e1d0adb9ed0fb44f2f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for GLOBAL_POSITION_INT ( #33 )
    # "INT" is the name of a coordinate system
    # zxzxzxzx
    std_msgs/Header header
    
    uint32 time_boot_ms	#ms	Timestamp (time since system boot).
    int32 lat		#degE7	Latitude, expressed
    int32 lon		#degE7	Longitude, expressed
    int32 alt		#mm	Altitude (MSL). Note that virtually all GPS modules provide both WGS84 and MSL.
    int32 relative_alt	#mm	Altitude above ground
    int16 vx		#cm/s	Ground X Speed (Latitude, positive north)
    int16 vy		#cm/s	Ground Y Speed (Longitude, positive east)
    int16 vz		#cm/s	Ground Z Speed (Altitude, positive down)
    uint16 hdg		#cdeg	Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
    
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
    const resolved = new GlobalPositionINT(null);
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

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0
    }

    if (msg.relative_alt !== undefined) {
      resolved.relative_alt = msg.relative_alt;
    }
    else {
      resolved.relative_alt = 0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0
    }

    if (msg.hdg !== undefined) {
      resolved.hdg = msg.hdg;
    }
    else {
      resolved.hdg = 0
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

module.exports = GlobalPositionINT;
