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

class QueryDroneVersionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryDroneVersionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryDroneVersionRequest
    let len;
    let data = new QueryDroneVersionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/QueryDroneVersionRequest';
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
    const resolved = new QueryDroneVersionRequest(null);
    return resolved;
    }
};

class QueryDroneVersionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.hardware = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('hardware')) {
        this.hardware = initObj.hardware
      }
      else {
        this.hardware = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryDroneVersionResponse
    // Serialize message field [version]
    bufferOffset = _serializer.uint32(obj.version, buffer, bufferOffset);
    // Serialize message field [hardware]
    bufferOffset = _serializer.string(obj.hardware, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryDroneVersionResponse
    let len;
    let data = new QueryDroneVersionResponse(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [hardware]
    data.hardware = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.hardware.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/QueryDroneVersionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89b6e8d274e31334cc3a372757607be2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 version
    string hardware
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryDroneVersionResponse(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.hardware !== undefined) {
      resolved.hardware = msg.hardware;
    }
    else {
      resolved.hardware = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: QueryDroneVersionRequest,
  Response: QueryDroneVersionResponse,
  md5sum() { return '89b6e8d274e31334cc3a372757607be2'; },
  datatype() { return 'dji_sdk/QueryDroneVersion'; }
};
