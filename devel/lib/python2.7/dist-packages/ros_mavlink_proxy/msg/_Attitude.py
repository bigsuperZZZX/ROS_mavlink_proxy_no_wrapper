# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_mavlink_proxy/Attitude.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Attitude(genpy.Message):
  _md5sum = "ac2d717021150553bfe16ffa8c2170f1"
  _type = "ros_mavlink_proxy/Attitude"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Message for ATTITUDE ( #30 )
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
"""
  __slots__ = ['header','time_boot_ms','roll','pitch','yaw','rollspeed','pitchspeed','yawspeed','origin_system_id','target_system_id']
  _slot_types = ['std_msgs/Header','uint32','float32','float32','float32','float32','float32','float32','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,time_boot_ms,roll,pitch,yaw,rollspeed,pitchspeed,yawspeed,origin_system_id,target_system_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Attitude, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.time_boot_ms is None:
        self.time_boot_ms = 0
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.rollspeed is None:
        self.rollspeed = 0.
      if self.pitchspeed is None:
        self.pitchspeed = 0.
      if self.yawspeed is None:
        self.yawspeed = 0.
      if self.origin_system_id is None:
        self.origin_system_id = 0
      if self.target_system_id is None:
        self.target_system_id = 0
    else:
      self.header = std_msgs.msg.Header()
      self.time_boot_ms = 0
      self.roll = 0.
      self.pitch = 0.
      self.yaw = 0.
      self.rollspeed = 0.
      self.pitchspeed = 0.
      self.yawspeed = 0.
      self.origin_system_id = 0
      self.target_system_id = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_I6f2B().pack(_x.time_boot_ms, _x.roll, _x.pitch, _x.yaw, _x.rollspeed, _x.pitchspeed, _x.yawspeed, _x.origin_system_id, _x.target_system_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 30
      (_x.time_boot_ms, _x.roll, _x.pitch, _x.yaw, _x.rollspeed, _x.pitchspeed, _x.yawspeed, _x.origin_system_id, _x.target_system_id,) = _get_struct_I6f2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_I6f2B().pack(_x.time_boot_ms, _x.roll, _x.pitch, _x.yaw, _x.rollspeed, _x.pitchspeed, _x.yawspeed, _x.origin_system_id, _x.target_system_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 30
      (_x.time_boot_ms, _x.roll, _x.pitch, _x.yaw, _x.rollspeed, _x.pitchspeed, _x.yawspeed, _x.origin_system_id, _x.target_system_id,) = _get_struct_I6f2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_I6f2B = None
def _get_struct_I6f2B():
    global _struct_I6f2B
    if _struct_I6f2B is None:
        _struct_I6f2B = struct.Struct("<I6f2B")
    return _struct_I6f2B