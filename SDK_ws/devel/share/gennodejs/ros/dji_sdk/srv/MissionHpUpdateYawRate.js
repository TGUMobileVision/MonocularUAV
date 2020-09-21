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

class MissionHpUpdateYawRateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.yaw_rate = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionHpUpdateYawRateRequest
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float32(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHpUpdateYawRateRequest
    let len;
    let data = new MissionHpUpdateYawRateRequest(null);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpUpdateYawRateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e07211af04442e78da518f6609aac85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 yaw_rate
    uint8 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionHpUpdateYawRateRequest(null);
    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

class MissionHpUpdateYawRateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.cmd_set = null;
      this.cmd_id = null;
      this.ack_data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
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
    // Serializes a message object of type MissionHpUpdateYawRateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [cmd_set]
    bufferOffset = _serializer.uint8(obj.cmd_set, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.uint8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [ack_data]
    bufferOffset = _serializer.uint32(obj.ack_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHpUpdateYawRateResponse
    let len;
    let data = new MissionHpUpdateYawRateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cmd_set]
    data.cmd_set = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ack_data]
    data.ack_data = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionHpUpdateYawRateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f03b0bc279b265c40946c1011df83013';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
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
    const resolved = new MissionHpUpdateYawRateResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
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
  Request: MissionHpUpdateYawRateRequest,
  Response: MissionHpUpdateYawRateResponse,
  md5sum() { return 'e4b46552667899a74d58ef421a1fe415'; },
  datatype() { return 'dji_sdk/MissionHpUpdateYawRate'; }
};
