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

class CameraActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_action = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_action')) {
        this.camera_action = initObj.camera_action
      }
      else {
        this.camera_action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraActionRequest
    // Serialize message field [camera_action]
    bufferOffset = _serializer.uint8(obj.camera_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraActionRequest
    let len;
    let data = new CameraActionRequest(null);
    // Deserialize message field [camera_action]
    data.camera_action = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/CameraActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7211ed45eec22a2555341dbae4c3b3af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 CAMERA_ACTION_TAKE_PICTURE = 0
    uint8 CAMERA_ACTION_START_RECORD = 1
    uint8 CAMERA_ACTION_STOP_RECORD  = 2
    
    
    uint8 camera_action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraActionRequest(null);
    if (msg.camera_action !== undefined) {
      resolved.camera_action = msg.camera_action;
    }
    else {
      resolved.camera_action = 0
    }

    return resolved;
    }
};

// Constants for message
CameraActionRequest.Constants = {
  CAMERA_ACTION_TAKE_PICTURE: 0,
  CAMERA_ACTION_START_RECORD: 1,
  CAMERA_ACTION_STOP_RECORD: 2,
}

class CameraActionResponse {
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
    // Serializes a message object of type CameraActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraActionResponse
    let len;
    let data = new CameraActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/CameraActionResponse';
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
    const resolved = new CameraActionResponse(null);
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
  Request: CameraActionRequest,
  Response: CameraActionResponse,
  md5sum() { return 'cffa80c600cf5ffacb2c7279944f208e'; },
  datatype() { return 'dji_sdk/CameraAction'; }
};
