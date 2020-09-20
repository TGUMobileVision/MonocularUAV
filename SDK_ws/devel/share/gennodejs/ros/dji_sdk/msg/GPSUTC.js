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

class GPSUTC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.UTCTimeData = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('UTCTimeData')) {
        this.UTCTimeData = initObj.UTCTimeData
      }
      else {
        this.UTCTimeData = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSUTC
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [UTCTimeData]
    bufferOffset = _serializer.string(obj.UTCTimeData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSUTC
    let len;
    let data = new GPSUTC(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [UTCTimeData]
    data.UTCTimeData = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.UTCTimeData.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/GPSUTC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034c4baeda26125f91567e2717d1cf5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the time stamp of getting this data in the ROS system
    time stamp
    
    # the time stamp from GPS/RTK
    string UTCTimeData
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPSUTC(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.UTCTimeData !== undefined) {
      resolved.UTCTimeData = msg.UTCTimeData;
    }
    else {
      resolved.UTCTimeData = ''
    }

    return resolved;
    }
};

module.exports = GPSUTC;
