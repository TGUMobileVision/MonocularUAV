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

class StereoVGASubscriptionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vga_freq = null;
      this.front_vga = null;
      this.unsubscribe_vga = null;
    }
    else {
      if (initObj.hasOwnProperty('vga_freq')) {
        this.vga_freq = initObj.vga_freq
      }
      else {
        this.vga_freq = 0;
      }
      if (initObj.hasOwnProperty('front_vga')) {
        this.front_vga = initObj.front_vga
      }
      else {
        this.front_vga = 0;
      }
      if (initObj.hasOwnProperty('unsubscribe_vga')) {
        this.unsubscribe_vga = initObj.unsubscribe_vga
      }
      else {
        this.unsubscribe_vga = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StereoVGASubscriptionRequest
    // Serialize message field [vga_freq]
    bufferOffset = _serializer.uint8(obj.vga_freq, buffer, bufferOffset);
    // Serialize message field [front_vga]
    bufferOffset = _serializer.uint8(obj.front_vga, buffer, bufferOffset);
    // Serialize message field [unsubscribe_vga]
    bufferOffset = _serializer.uint8(obj.unsubscribe_vga, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StereoVGASubscriptionRequest
    let len;
    let data = new StereoVGASubscriptionRequest(null);
    // Deserialize message field [vga_freq]
    data.vga_freq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_vga]
    data.front_vga = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unsubscribe_vga]
    data.unsubscribe_vga = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/StereoVGASubscriptionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42bba0e546d732e14c2e4218265204c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 VGA_20_HZ = 0
    uint8 VGA_10_HZ = 1
    
    
    uint8 vga_freq
    
    
    uint8 front_vga
    
    
    
    uint8 unsubscribe_vga
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StereoVGASubscriptionRequest(null);
    if (msg.vga_freq !== undefined) {
      resolved.vga_freq = msg.vga_freq;
    }
    else {
      resolved.vga_freq = 0
    }

    if (msg.front_vga !== undefined) {
      resolved.front_vga = msg.front_vga;
    }
    else {
      resolved.front_vga = 0
    }

    if (msg.unsubscribe_vga !== undefined) {
      resolved.unsubscribe_vga = msg.unsubscribe_vga;
    }
    else {
      resolved.unsubscribe_vga = 0
    }

    return resolved;
    }
};

// Constants for message
StereoVGASubscriptionRequest.Constants = {
  VGA_20_HZ: 0,
  VGA_10_HZ: 1,
}

class StereoVGASubscriptionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StereoVGASubscriptionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StereoVGASubscriptionResponse
    let len;
    let data = new StereoVGASubscriptionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/StereoVGASubscriptionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StereoVGASubscriptionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StereoVGASubscriptionRequest,
  Response: StereoVGASubscriptionResponse,
  md5sum() { return 'a636307470f5a4e2ecf4fbcb4aeca4ed'; },
  datatype() { return 'dji_sdk/StereoVGASubscription'; }
};
