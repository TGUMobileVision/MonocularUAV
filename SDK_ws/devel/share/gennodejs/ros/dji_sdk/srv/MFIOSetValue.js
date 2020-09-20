// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MFIOSetValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.init_on_time_us = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('init_on_time_us')) {
        this.init_on_time_us = initObj.init_on_time_us
      }
      else {
        this.init_on_time_us = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MFIOSetValueRequest
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [init_on_time_us]
    bufferOffset = _serializer.uint32(obj.init_on_time_us, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MFIOSetValueRequest
    let len;
    let data = new MFIOSetValueRequest(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_on_time_us]
    data.init_on_time_us = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MFIOSetValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a1c84fd096204723ecbb1a57b618e28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 channel
    uint32 init_on_time_us
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MFIOSetValueRequest(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.init_on_time_us !== undefined) {
      resolved.init_on_time_us = msg.init_on_time_us;
    }
    else {
      resolved.init_on_time_us = 0
    }

    return resolved;
    }
};

class MFIOSetValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MFIOSetValueResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MFIOSetValueResponse
    let len;
    let data = new MFIOSetValueResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MFIOSetValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MFIOSetValueResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MFIOSetValueRequest,
  Response: MFIOSetValueResponse,
  md5sum() { return '7a1c84fd096204723ecbb1a57b618e28'; },
  datatype() { return 'dji_sdk/MFIOSetValue'; }
};
