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

class MFIOConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.channel = null;
      this.init_on_time_us = null;
      this.pwm_freq = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
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
      if (initObj.hasOwnProperty('pwm_freq')) {
        this.pwm_freq = initObj.pwm_freq
      }
      else {
        this.pwm_freq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MFIOConfigRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [init_on_time_us]
    bufferOffset = _serializer.uint32(obj.init_on_time_us, buffer, bufferOffset);
    // Serialize message field [pwm_freq]
    bufferOffset = _serializer.uint16(obj.pwm_freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MFIOConfigRequest
    let len;
    let data = new MFIOConfigRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_on_time_us]
    data.init_on_time_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pwm_freq]
    data.pwm_freq = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MFIOConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad06bda475c7f13453680ee626114de0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 MODE_PWM_OUT  = 0
    
    uint8 MODE_GPIO_OUT = 2
    uint8 MODE_GPIO_IN  = 3
    uint8 MODE_ADC      = 4
    
    
    uint8 mode
    uint8 channel
    uint32 init_on_time_us
    uint16 pwm_freq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MFIOConfigRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

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

    if (msg.pwm_freq !== undefined) {
      resolved.pwm_freq = msg.pwm_freq;
    }
    else {
      resolved.pwm_freq = 0
    }

    return resolved;
    }
};

// Constants for message
MFIOConfigRequest.Constants = {
  MODE_PWM_OUT: 0,
  MODE_GPIO_OUT: 2,
  MODE_GPIO_IN: 3,
  MODE_ADC: 4,
}

class MFIOConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MFIOConfigResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MFIOConfigResponse
    let len;
    let data = new MFIOConfigResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MFIOConfigResponse';
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
    const resolved = new MFIOConfigResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MFIOConfigRequest,
  Response: MFIOConfigResponse,
  md5sum() { return 'ad06bda475c7f13453680ee626114de0'; },
  datatype() { return 'dji_sdk/MFIOConfig'; }
};
