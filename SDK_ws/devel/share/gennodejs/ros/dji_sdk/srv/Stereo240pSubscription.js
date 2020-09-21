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

class Stereo240pSubscriptionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_right_240p = null;
      this.front_left_240p = null;
      this.down_front_240p = null;
      this.down_back_240p = null;
      this.unsubscribe_240p = null;
    }
    else {
      if (initObj.hasOwnProperty('front_right_240p')) {
        this.front_right_240p = initObj.front_right_240p
      }
      else {
        this.front_right_240p = 0;
      }
      if (initObj.hasOwnProperty('front_left_240p')) {
        this.front_left_240p = initObj.front_left_240p
      }
      else {
        this.front_left_240p = 0;
      }
      if (initObj.hasOwnProperty('down_front_240p')) {
        this.down_front_240p = initObj.down_front_240p
      }
      else {
        this.down_front_240p = 0;
      }
      if (initObj.hasOwnProperty('down_back_240p')) {
        this.down_back_240p = initObj.down_back_240p
      }
      else {
        this.down_back_240p = 0;
      }
      if (initObj.hasOwnProperty('unsubscribe_240p')) {
        this.unsubscribe_240p = initObj.unsubscribe_240p
      }
      else {
        this.unsubscribe_240p = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stereo240pSubscriptionRequest
    // Serialize message field [front_right_240p]
    bufferOffset = _serializer.uint8(obj.front_right_240p, buffer, bufferOffset);
    // Serialize message field [front_left_240p]
    bufferOffset = _serializer.uint8(obj.front_left_240p, buffer, bufferOffset);
    // Serialize message field [down_front_240p]
    bufferOffset = _serializer.uint8(obj.down_front_240p, buffer, bufferOffset);
    // Serialize message field [down_back_240p]
    bufferOffset = _serializer.uint8(obj.down_back_240p, buffer, bufferOffset);
    // Serialize message field [unsubscribe_240p]
    bufferOffset = _serializer.uint8(obj.unsubscribe_240p, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stereo240pSubscriptionRequest
    let len;
    let data = new Stereo240pSubscriptionRequest(null);
    // Deserialize message field [front_right_240p]
    data.front_right_240p = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_left_240p]
    data.front_left_240p = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [down_front_240p]
    data.down_front_240p = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [down_back_240p]
    data.down_back_240p = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unsubscribe_240p]
    data.unsubscribe_240p = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/Stereo240pSubscriptionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f676e2d64f211783ff9d6cc8a69aa395';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 front_right_240p
    uint8 front_left_240p
    uint8 down_front_240p
    uint8 down_back_240p
    
    
    
    uint8 unsubscribe_240p
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stereo240pSubscriptionRequest(null);
    if (msg.front_right_240p !== undefined) {
      resolved.front_right_240p = msg.front_right_240p;
    }
    else {
      resolved.front_right_240p = 0
    }

    if (msg.front_left_240p !== undefined) {
      resolved.front_left_240p = msg.front_left_240p;
    }
    else {
      resolved.front_left_240p = 0
    }

    if (msg.down_front_240p !== undefined) {
      resolved.down_front_240p = msg.down_front_240p;
    }
    else {
      resolved.down_front_240p = 0
    }

    if (msg.down_back_240p !== undefined) {
      resolved.down_back_240p = msg.down_back_240p;
    }
    else {
      resolved.down_back_240p = 0
    }

    if (msg.unsubscribe_240p !== undefined) {
      resolved.unsubscribe_240p = msg.unsubscribe_240p;
    }
    else {
      resolved.unsubscribe_240p = 0
    }

    return resolved;
    }
};

class Stereo240pSubscriptionResponse {
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
    // Serializes a message object of type Stereo240pSubscriptionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stereo240pSubscriptionResponse
    let len;
    let data = new Stereo240pSubscriptionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/Stereo240pSubscriptionResponse';
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
    const resolved = new Stereo240pSubscriptionResponse(null);
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
  Request: Stereo240pSubscriptionRequest,
  Response: Stereo240pSubscriptionResponse,
  md5sum() { return 'c1205f3b01904555b852bb2bc5881da0'; },
  datatype() { return 'dji_sdk/Stereo240pSubscription'; }
};
