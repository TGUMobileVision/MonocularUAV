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

class MissionWpGetSpeedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpGetSpeedRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpGetSpeedRequest
    let len;
    let data = new MissionWpGetSpeedRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpGetSpeedRequest';
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
    const resolved = new MissionWpGetSpeedRequest(null);
    return resolved;
    }
};

class MissionWpGetSpeedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.cmd_set = null;
      this.cmd_id = null;
      this.ack_data = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_set')) {
        this.cmd_set = initObj.cmd_set
      }
      else {
        this.cmd_set = 0;
      }
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('ack_data')) {
        this.ack_data = initObj.ack_data
      }
      else {
        this.ack_data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpGetSpeedResponse
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [cmd_set]
    bufferOffset = _serializer.uint8(obj.cmd_set, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.uint8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [ack_data]
    bufferOffset = _serializer.uint32(obj.ack_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpGetSpeedResponse
    let len;
    let data = new MissionWpGetSpeedResponse(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_set]
    data.cmd_set = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ack_data]
    data.ack_data = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpGetSpeedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24b8cc8834f9763e3d1c641b02dfffb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 speed
    
    uint8 cmd_set
    uint8 cmd_id
    uint32 ack_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWpGetSpeedResponse(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.cmd_set !== undefined) {
      resolved.cmd_set = msg.cmd_set;
    }
    else {
      resolved.cmd_set = 0
    }

    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.ack_data !== undefined) {
      resolved.ack_data = msg.ack_data;
    }
    else {
      resolved.ack_data = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MissionWpGetSpeedRequest,
  Response: MissionWpGetSpeedResponse,
  md5sum() { return '24b8cc8834f9763e3d1c641b02dfffb4'; },
  datatype() { return 'dji_sdk/MissionWpGetSpeed'; }
};
