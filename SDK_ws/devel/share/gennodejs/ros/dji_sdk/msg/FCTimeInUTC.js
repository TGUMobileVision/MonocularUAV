// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FCTimeInUTC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.fc_timestamp_us = null;
      this.fc_utc_yymmdd = null;
      this.fc_utc_hhmmss = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('fc_timestamp_us')) {
        this.fc_timestamp_us = initObj.fc_timestamp_us
      }
      else {
        this.fc_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('fc_utc_yymmdd')) {
        this.fc_utc_yymmdd = initObj.fc_utc_yymmdd
      }
      else {
        this.fc_utc_yymmdd = 0;
      }
      if (initObj.hasOwnProperty('fc_utc_hhmmss')) {
        this.fc_utc_hhmmss = initObj.fc_utc_hhmmss
      }
      else {
        this.fc_utc_hhmmss = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FCTimeInUTC
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [fc_timestamp_us]
    bufferOffset = _serializer.uint32(obj.fc_timestamp_us, buffer, bufferOffset);
    // Serialize message field [fc_utc_yymmdd]
    bufferOffset = _serializer.uint32(obj.fc_utc_yymmdd, buffer, bufferOffset);
    // Serialize message field [fc_utc_hhmmss]
    bufferOffset = _serializer.uint32(obj.fc_utc_hhmmss, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FCTimeInUTC
    let len;
    let data = new FCTimeInUTC(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [fc_timestamp_us]
    data.fc_timestamp_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fc_utc_yymmdd]
    data.fc_utc_yymmdd = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fc_utc_hhmmss]
    data.fc_utc_hhmmss = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/FCTimeInUTC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46bad377c3e8bc271c70f3dffa21d6ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the time stamp of getting this data in the ROS system
    time stamp
    
    # the time stamp in FC
    uint32 fc_timestamp_us
    uint32 fc_utc_yymmdd
    uint32 fc_utc_hhmmss
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FCTimeInUTC(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.fc_timestamp_us !== undefined) {
      resolved.fc_timestamp_us = msg.fc_timestamp_us;
    }
    else {
      resolved.fc_timestamp_us = 0
    }

    if (msg.fc_utc_yymmdd !== undefined) {
      resolved.fc_utc_yymmdd = msg.fc_utc_yymmdd;
    }
    else {
      resolved.fc_utc_yymmdd = 0
    }

    if (msg.fc_utc_hhmmss !== undefined) {
      resolved.fc_utc_hhmmss = msg.fc_utc_hhmmss;
    }
    else {
      resolved.fc_utc_hhmmss = 0
    }

    return resolved;
    }
};

module.exports = FCTimeInUTC;
