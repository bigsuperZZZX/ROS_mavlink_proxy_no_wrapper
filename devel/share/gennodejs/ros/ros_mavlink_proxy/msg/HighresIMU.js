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

class HighresIMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_usec = null;
      this.xacc = null;
      this.yacc = null;
      this.zacc = null;
      this.xgyro = null;
      this.ygyro = null;
      this.zgyro = null;
      this.xmag = null;
      this.ymag = null;
      this.zmag = null;
      this.abs_pressure = null;
      this.diff_pressure = null;
      this.pressure_alt = null;
      this.temperature = null;
      this.fields_updated = null;
      this.id = null;
      this.origin_system_id = null;
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
      if (initObj.hasOwnProperty('xacc')) {
        this.xacc = initObj.xacc
      }
      else {
        this.xacc = 0.0;
      }
      if (initObj.hasOwnProperty('yacc')) {
        this.yacc = initObj.yacc
      }
      else {
        this.yacc = 0.0;
      }
      if (initObj.hasOwnProperty('zacc')) {
        this.zacc = initObj.zacc
      }
      else {
        this.zacc = 0.0;
      }
      if (initObj.hasOwnProperty('xgyro')) {
        this.xgyro = initObj.xgyro
      }
      else {
        this.xgyro = 0.0;
      }
      if (initObj.hasOwnProperty('ygyro')) {
        this.ygyro = initObj.ygyro
      }
      else {
        this.ygyro = 0.0;
      }
      if (initObj.hasOwnProperty('zgyro')) {
        this.zgyro = initObj.zgyro
      }
      else {
        this.zgyro = 0.0;
      }
      if (initObj.hasOwnProperty('xmag')) {
        this.xmag = initObj.xmag
      }
      else {
        this.xmag = 0.0;
      }
      if (initObj.hasOwnProperty('ymag')) {
        this.ymag = initObj.ymag
      }
      else {
        this.ymag = 0.0;
      }
      if (initObj.hasOwnProperty('zmag')) {
        this.zmag = initObj.zmag
      }
      else {
        this.zmag = 0.0;
      }
      if (initObj.hasOwnProperty('abs_pressure')) {
        this.abs_pressure = initObj.abs_pressure
      }
      else {
        this.abs_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('diff_pressure')) {
        this.diff_pressure = initObj.diff_pressure
      }
      else {
        this.diff_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('pressure_alt')) {
        this.pressure_alt = initObj.pressure_alt
      }
      else {
        this.pressure_alt = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('fields_updated')) {
        this.fields_updated = initObj.fields_updated
      }
      else {
        this.fields_updated = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
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
    // Serializes a message object of type HighresIMU
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_usec]
    bufferOffset = _serializer.uint64(obj.time_usec, buffer, bufferOffset);
    // Serialize message field [xacc]
    bufferOffset = _serializer.float32(obj.xacc, buffer, bufferOffset);
    // Serialize message field [yacc]
    bufferOffset = _serializer.float32(obj.yacc, buffer, bufferOffset);
    // Serialize message field [zacc]
    bufferOffset = _serializer.float32(obj.zacc, buffer, bufferOffset);
    // Serialize message field [xgyro]
    bufferOffset = _serializer.float32(obj.xgyro, buffer, bufferOffset);
    // Serialize message field [ygyro]
    bufferOffset = _serializer.float32(obj.ygyro, buffer, bufferOffset);
    // Serialize message field [zgyro]
    bufferOffset = _serializer.float32(obj.zgyro, buffer, bufferOffset);
    // Serialize message field [xmag]
    bufferOffset = _serializer.float32(obj.xmag, buffer, bufferOffset);
    // Serialize message field [ymag]
    bufferOffset = _serializer.float32(obj.ymag, buffer, bufferOffset);
    // Serialize message field [zmag]
    bufferOffset = _serializer.float32(obj.zmag, buffer, bufferOffset);
    // Serialize message field [abs_pressure]
    bufferOffset = _serializer.float32(obj.abs_pressure, buffer, bufferOffset);
    // Serialize message field [diff_pressure]
    bufferOffset = _serializer.float32(obj.diff_pressure, buffer, bufferOffset);
    // Serialize message field [pressure_alt]
    bufferOffset = _serializer.float32(obj.pressure_alt, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [fields_updated]
    bufferOffset = _serializer.uint16(obj.fields_updated, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [origin_system_id]
    bufferOffset = _serializer.uint8(obj.origin_system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighresIMU
    let len;
    let data = new HighresIMU(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_usec]
    data.time_usec = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [xacc]
    data.xacc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yacc]
    data.yacc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zacc]
    data.zacc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xgyro]
    data.xgyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ygyro]
    data.ygyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zgyro]
    data.zgyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xmag]
    data.xmag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ymag]
    data.ymag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zmag]
    data.zmag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [abs_pressure]
    data.abs_pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_pressure]
    data.diff_pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pressure_alt]
    data.pressure_alt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fields_updated]
    data.fields_updated = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [origin_system_id]
    data.origin_system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_mavlink_proxy/HighresIMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02e220874ef254dd246c5482f83c54a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for HIGHRES_IMU ( #105 )
    # zxzxzxzx
    
    std_msgs/Header header
    
    uint64 time_usec	#us	Timestamp (UNIX Epoch time or time since system boot). The receiving end can infer timestamp format (since 1.1.1970 or since system boot) by checking for the magnitude the number.
    float32 xacc		#m/s/s	X acceleration
    float32 yacc		#m/s/s	Y acceleration
    float32 zacc		#m/s/s	Z acceleration
    float32 xgyro		#rad/s	Angular speed around X axis
    float32 ygyro		#rad/s	Angular speed around Y axis
    float32 zgyro		#rad/s	Angular speed around Z axis
    float32 xmag		#gauss	X Magnetic field
    float32 ymag		#gauss	Y Magnetic field
    float32 zmag		#gauss	Z Magnetic field
    float32 abs_pressure	#mbar	Absolute pressure
    float32 diff_pressure	#mbar	Differential pressure
    float32 pressure_alt	#	Altitude calculated from pressure
    float32 temperature	#degC	Temperature
    uint16 fields_updated	#	Bitmap for fields that have updated since last message, bit 0 = xacc, bit 12: temperature
    uint8 id 		#       Id. Ids are numbered from 0 and map to IMUs numbered from 1 (e.g. IMU1 will have a message with id=0)
    
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
    const resolved = new HighresIMU(null);
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

    if (msg.xacc !== undefined) {
      resolved.xacc = msg.xacc;
    }
    else {
      resolved.xacc = 0.0
    }

    if (msg.yacc !== undefined) {
      resolved.yacc = msg.yacc;
    }
    else {
      resolved.yacc = 0.0
    }

    if (msg.zacc !== undefined) {
      resolved.zacc = msg.zacc;
    }
    else {
      resolved.zacc = 0.0
    }

    if (msg.xgyro !== undefined) {
      resolved.xgyro = msg.xgyro;
    }
    else {
      resolved.xgyro = 0.0
    }

    if (msg.ygyro !== undefined) {
      resolved.ygyro = msg.ygyro;
    }
    else {
      resolved.ygyro = 0.0
    }

    if (msg.zgyro !== undefined) {
      resolved.zgyro = msg.zgyro;
    }
    else {
      resolved.zgyro = 0.0
    }

    if (msg.xmag !== undefined) {
      resolved.xmag = msg.xmag;
    }
    else {
      resolved.xmag = 0.0
    }

    if (msg.ymag !== undefined) {
      resolved.ymag = msg.ymag;
    }
    else {
      resolved.ymag = 0.0
    }

    if (msg.zmag !== undefined) {
      resolved.zmag = msg.zmag;
    }
    else {
      resolved.zmag = 0.0
    }

    if (msg.abs_pressure !== undefined) {
      resolved.abs_pressure = msg.abs_pressure;
    }
    else {
      resolved.abs_pressure = 0.0
    }

    if (msg.diff_pressure !== undefined) {
      resolved.diff_pressure = msg.diff_pressure;
    }
    else {
      resolved.diff_pressure = 0.0
    }

    if (msg.pressure_alt !== undefined) {
      resolved.pressure_alt = msg.pressure_alt;
    }
    else {
      resolved.pressure_alt = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.fields_updated !== undefined) {
      resolved.fields_updated = msg.fields_updated;
    }
    else {
      resolved.fields_updated = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
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

module.exports = HighresIMU;
