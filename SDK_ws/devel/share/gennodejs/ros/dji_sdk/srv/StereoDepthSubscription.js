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

class StereoDepthSubscriptionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_depth_240p = null;
      this.unsubscribe_240p = null;
    }
    else {
      if (initObj.hasOwnProperty('front_depth_240p')) {
        this.front_depth_240p = initObj.front_depth_240p
      }
      else {
        this.front_depth_240p = 0;
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
    // Serializes a message object of type StereoDepthSubscriptionRequest
    // Serialize message field [front_depth_240p]
    bufferOffset = _serializer.uint8(obj.front_depth_240p, buffer, bufferOffset);
    // Serialize message field [unsubscribe_240p]
    bufferOffset = _serializer.uint8(obj.unsubscribe_240p, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StereoDepthSubscriptionRequest
    let len;
    let data = new StereoDepthSubscriptionRequest(null);
    // Deserialize message field [front_depth_240p]
    data.front_depth_240p = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unsubscribe_240p]
    data.unsubscribe_240p = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/StereoDepthSubscriptionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd98d26e6c026b94987bcb49dda81428';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 front_depth_240p
    
    
    
    uint8 unsubscribe_240p
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StereoDepthSubscriptionRequest(null);
    if (msg.front_depth_240p !== undefined) {
      resolved.front_depth_240p = msg.front_depth_240p;
    }
    else {
      resolved.front_depth_240p = 0
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

class StereoDepthSubscriptionResponse {
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
    // Serializes a message object of type StereoDepthSubscriptionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StereoDepthSubscriptionResponse
    let len;
    let data = new StereoDepthSubscriptionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/StereoDepthSubscriptionResponse';
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
    const resolved = new StereoDepthSubscriptionResponse(null);
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
  Request: StereoDepthSubscriptionRequest,
  Response: StereoDepthSubscriptionResponse,
  md5sum() { return '6da41f0fc9c34988dbd56e6a11bddfdf'; },
  datatype() { return 'dji_sdk/StereoDepthSubscription'; }
};
