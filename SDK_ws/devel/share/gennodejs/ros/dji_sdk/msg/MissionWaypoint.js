// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionWaypointAction = require('./MissionWaypointAction.js');

//-----------------------------------------------------------

class MissionWaypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.damping_distance = null;
      this.target_yaw = null;
      this.target_gimbal_pitch = null;
      this.turn_mode = null;
      this.has_action = null;
      this.action_time_limit = null;
      this.waypoint_action = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('damping_distance')) {
        this.damping_distance = initObj.damping_distance
      }
      else {
        this.damping_distance = 0.0;
      }
      if (initObj.hasOwnProperty('target_yaw')) {
        this.target_yaw = initObj.target_yaw
      }
      else {
        this.target_yaw = 0;
      }
      if (initObj.hasOwnProperty('target_gimbal_pitch')) {
        this.target_gimbal_pitch = initObj.target_gimbal_pitch
      }
      else {
        this.target_gimbal_pitch = 0;
      }
      if (initObj.hasOwnProperty('turn_mode')) {
        this.turn_mode = initObj.turn_mode
      }
      else {
        this.turn_mode = 0;
      }
      if (initObj.hasOwnProperty('has_action')) {
        this.has_action = initObj.has_action
      }
      else {
        this.has_action = 0;
      }
      if (initObj.hasOwnProperty('action_time_limit')) {
        this.action_time_limit = initObj.action_time_limit
      }
      else {
        this.action_time_limit = 0;
      }
      if (initObj.hasOwnProperty('waypoint_action')) {
        this.waypoint_action = initObj.waypoint_action
      }
      else {
        this.waypoint_action = new MissionWaypointAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWaypoint
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float32(obj.altitude, buffer, bufferOffset);
    // Serialize message field [damping_distance]
    bufferOffset = _serializer.float32(obj.damping_distance, buffer, bufferOffset);
    // Serialize message field [target_yaw]
    bufferOffset = _serializer.int16(obj.target_yaw, buffer, bufferOffset);
    // Serialize message field [target_gimbal_pitch]
    bufferOffset = _serializer.int16(obj.target_gimbal_pitch, buffer, bufferOffset);
    // Serialize message field [turn_mode]
    bufferOffset = _serializer.uint8(obj.turn_mode, buffer, bufferOffset);
    // Serialize message field [has_action]
    bufferOffset = _serializer.uint8(obj.has_action, buffer, bufferOffset);
    // Serialize message field [action_time_limit]
    bufferOffset = _serializer.uint16(obj.action_time_limit, buffer, bufferOffset);
    // Serialize message field [waypoint_action]
    bufferOffset = MissionWaypointAction.serialize(obj.waypoint_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWaypoint
    let len;
    let data = new MissionWaypoint(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [damping_distance]
    data.damping_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_yaw]
    data.target_yaw = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_gimbal_pitch]
    data.target_gimbal_pitch = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [turn_mode]
    data.turn_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [has_action]
    data.has_action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action_time_limit]
    data.action_time_limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [waypoint_action]
    data.waypoint_action = MissionWaypointAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 81;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22e006a33239b0dd80a9840e2fb0dd19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 latitude          # degree
    float64 longitude         # degree
    float32 altitude          # relative altitude from takeoff point
    float32 damping_distance  # Bend length (effective coordinated turn mode only)
    int16 target_yaw          # Yaw (degree)
    int16 target_gimbal_pitch # Gimbal pitch
    uint8 turn_mode           # 0: clockwise, 1: counter-clockwise
    uint8 has_action          # 0: no, 1: yes
    uint16 action_time_limit
    MissionWaypointAction waypoint_action
    
    ================================================================================
    MSG: dji_sdk/MissionWaypointAction
    # action_repeat
    # lower 4 bit: Total number of actions
    # hight 4 bit: Total running times
    uint8 action_repeat
    uint8[16] command_list
    uint16[16] command_parameter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWaypoint(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.damping_distance !== undefined) {
      resolved.damping_distance = msg.damping_distance;
    }
    else {
      resolved.damping_distance = 0.0
    }

    if (msg.target_yaw !== undefined) {
      resolved.target_yaw = msg.target_yaw;
    }
    else {
      resolved.target_yaw = 0
    }

    if (msg.target_gimbal_pitch !== undefined) {
      resolved.target_gimbal_pitch = msg.target_gimbal_pitch;
    }
    else {
      resolved.target_gimbal_pitch = 0
    }

    if (msg.turn_mode !== undefined) {
      resolved.turn_mode = msg.turn_mode;
    }
    else {
      resolved.turn_mode = 0
    }

    if (msg.has_action !== undefined) {
      resolved.has_action = msg.has_action;
    }
    else {
      resolved.has_action = 0
    }

    if (msg.action_time_limit !== undefined) {
      resolved.action_time_limit = msg.action_time_limit;
    }
    else {
      resolved.action_time_limit = 0
    }

    if (msg.waypoint_action !== undefined) {
      resolved.waypoint_action = MissionWaypointAction.Resolve(msg.waypoint_action)
    }
    else {
      resolved.waypoint_action = new MissionWaypointAction()
    }

    return resolved;
    }
};

module.exports = MissionWaypoint;
