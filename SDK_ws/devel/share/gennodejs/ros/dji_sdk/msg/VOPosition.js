// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VOPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.xHealth = null;
      this.yHealth = null;
      this.zHealth = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('xHealth')) {
        this.xHealth = initObj.xHealth
      }
      else {
        this.xHealth = 0;
      }
      if (initObj.hasOwnProperty('yHealth')) {
        this.yHealth = initObj.yHealth
      }
      else {
        this.yHealth = 0;
      }
      if (initObj.hasOwnProperty('zHealth')) {
        this.zHealth = initObj.zHealth
      }
      else {
        this.zHealth = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VOPosition
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [xHealth]
    bufferOffset = _serializer.uint8(obj.xHealth, buffer, bufferOffset);
    // Serialize message field [yHealth]
    bufferOffset = _serializer.uint8(obj.yHealth, buffer, bufferOffset);
    // Serialize message field [zHealth]
    bufferOffset = _serializer.uint8(obj.zHealth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VOPosition
    let len;
    let data = new VOPosition(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xHealth]
    data.xHealth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yHealth]
    data.yHealth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [zHealth]
    data.zHealth = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/VOPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6edcbd5875a94886d3601c7c54dba55d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 x
    float32 y
    float32 z
    uint8   xHealth
    uint8   yHealth
    uint8   zHealth
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
    const resolved = new VOPosition(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.xHealth !== undefined) {
      resolved.xHealth = msg.xHealth;
    }
    else {
      resolved.xHealth = 0
    }

    if (msg.yHealth !== undefined) {
      resolved.yHealth = msg.yHealth;
    }
    else {
      resolved.yHealth = 0
    }

    if (msg.zHealth !== undefined) {
      resolved.zHealth = msg.zHealth;
    }
    else {
      resolved.zHealth = 0
    }

    return resolved;
    }
};

module.exports = VOPosition;
