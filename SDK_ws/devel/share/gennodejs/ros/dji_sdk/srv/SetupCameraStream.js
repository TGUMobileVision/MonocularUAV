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

class SetupCameraStreamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cameraType = null;
      this.start = null;
    }
    else {
      if (initObj.hasOwnProperty('cameraType')) {
        this.cameraType = initObj.cameraType
      }
      else {
        this.cameraType = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetupCameraStreamRequest
    // Serialize message field [cameraType]
    bufferOffset = _serializer.uint8(obj.cameraType, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.uint8(obj.start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetupCameraStreamRequest
    let len;
    let data = new SetupCameraStreamRequest(null);
    // Deserialize message field [cameraType]
    data.cameraType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SetupCameraStreamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c63917a6476a348dad79b8c69b9671ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 FPV_CAM  = 0
    uint8 MAIN_CAM = 1
    
    
    uint8 cameraType
    
    
    uint8 start
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetupCameraStreamRequest(null);
    if (msg.cameraType !== undefined) {
      resolved.cameraType = msg.cameraType;
    }
    else {
      resolved.cameraType = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    return resolved;
    }
};

// Constants for message
SetupCameraStreamRequest.Constants = {
  FPV_CAM: 0,
  MAIN_CAM: 1,
}

class SetupCameraStreamResponse {
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
    // Serializes a message object of type SetupCameraStreamResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetupCameraStreamResponse
    let len;
    let data = new SetupCameraStreamResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/SetupCameraStreamResponse';
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
    const resolved = new SetupCameraStreamResponse(null);
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
  Request: SetupCameraStreamRequest,
  Response: SetupCameraStreamResponse,
  md5sum() { return 'e0732f307563f64841a2e5c6880f32d3'; },
  datatype() { return 'dji_sdk/SetupCameraStream'; }
};
