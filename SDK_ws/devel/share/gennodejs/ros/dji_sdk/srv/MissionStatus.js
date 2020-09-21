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

class MissionStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatusRequest
    let len;
    let data = new MissionStatusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionStatusRequest';
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
    const resolved = new MissionStatusRequest(null);
    return resolved;
    }
};

class MissionStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_mission_count = null;
      this.hotpoint_mission_count = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_mission_count')) {
        this.waypoint_mission_count = initObj.waypoint_mission_count
      }
      else {
        this.waypoint_mission_count = 0;
      }
      if (initObj.hasOwnProperty('hotpoint_mission_count')) {
        this.hotpoint_mission_count = initObj.hotpoint_mission_count
      }
      else {
        this.hotpoint_mission_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatusResponse
    // Serialize message field [waypoint_mission_count]
    bufferOffset = _serializer.uint8(obj.waypoint_mission_count, buffer, bufferOffset);
    // Serialize message field [hotpoint_mission_count]
    bufferOffset = _serializer.uint8(obj.hotpoint_mission_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatusResponse
    let len;
    let data = new MissionStatusResponse(null);
    // Deserialize message field [waypoint_mission_count]
    data.waypoint_mission_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hotpoint_mission_count]
    data.hotpoint_mission_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76ed0b909c77c6ce98df135419939be9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 waypoint_mission_count
    uint8 hotpoint_mission_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionStatusResponse(null);
    if (msg.waypoint_mission_count !== undefined) {
      resolved.waypoint_mission_count = msg.waypoint_mission_count;
    }
    else {
      resolved.waypoint_mission_count = 0
    }

    if (msg.hotpoint_mission_count !== undefined) {
      resolved.hotpoint_mission_count = msg.hotpoint_mission_count;
    }
    else {
      resolved.hotpoint_mission_count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MissionStatusRequest,
  Response: MissionStatusResponse,
  md5sum() { return '76ed0b909c77c6ce98df135419939be9'; },
  datatype() { return 'dji_sdk/MissionStatus'; }
};
