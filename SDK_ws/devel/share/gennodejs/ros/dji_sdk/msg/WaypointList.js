// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('./Waypoint.js');

//-----------------------------------------------------------

class WaypointList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_list = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_list')) {
        this.waypoint_list = initObj.waypoint_list
      }
      else {
        this.waypoint_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointList
    // Serialize message field [waypoint_list]
    // Serialize the length for message field [waypoint_list]
    bufferOffset = _serializer.uint32(obj.waypoint_list.length, buffer, bufferOffset);
    obj.waypoint_list.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointList
    let len;
    let data = new WaypointList(null);
    // Deserialize message field [waypoint_list]
    // Deserialize array length for message field [waypoint_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoint_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoint_list[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.waypoint_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/WaypointList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '284386e6fe0f355bdea1db93ead90084';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Waypoint[] waypoint_list
    
    ================================================================================
    MSG: dji_sdk/Waypoint
    float64 latitude      # in degree
    float64 longitude     # in degree
    float32 altitude
    int16 heading         #heading is in [-180,180]
    uint16 staytime       # in second
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointList(null);
    if (msg.waypoint_list !== undefined) {
      resolved.waypoint_list = new Array(msg.waypoint_list.length);
      for (let i = 0; i < resolved.waypoint_list.length; ++i) {
        resolved.waypoint_list[i] = Waypoint.Resolve(msg.waypoint_list[i]);
      }
    }
    else {
      resolved.waypoint_list = []
    }

    return resolved;
    }
};

module.exports = WaypointList;
