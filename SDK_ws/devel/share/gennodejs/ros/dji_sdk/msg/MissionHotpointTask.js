// Auto-generated. Do not edit!

// (in-package dji_sdk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MissionHotpointTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.radius = null;
      this.angular_speed = null;
      this.is_clockwise = null;
      this.start_point = null;
      this.yaw_mode = null;
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
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('angular_speed')) {
        this.angular_speed = initObj.angular_speed
      }
      else {
        this.angular_speed = 0.0;
      }
      if (initObj.hasOwnProperty('is_clockwise')) {
        this.is_clockwise = initObj.is_clockwise
      }
      else {
        this.is_clockwise = 0;
      }
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = 0;
      }
      if (initObj.hasOwnProperty('yaw_mode')) {
        this.yaw_mode = initObj.yaw_mode
      }
      else {
        this.yaw_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionHotpointTask
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    // Serialize message field [angular_speed]
    bufferOffset = _serializer.float32(obj.angular_speed, buffer, bufferOffset);
    // Serialize message field [is_clockwise]
    bufferOffset = _serializer.uint8(obj.is_clockwise, buffer, bufferOffset);
    // Serialize message field [start_point]
    bufferOffset = _serializer.uint8(obj.start_point, buffer, bufferOffset);
    // Serialize message field [yaw_mode]
    bufferOffset = _serializer.uint8(obj.yaw_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionHotpointTask
    let len;
    let data = new MissionHotpointTask(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_speed]
    data.angular_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_clockwise]
    data.is_clockwise = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_point]
    data.start_point = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_mode]
    data.yaw_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionHotpointTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5700988132c5f205ad38c15800896e84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 latitude  # degree
    float64 longitude # degree
    float64 altitude  # meter
    float64 radius    # meter
    float32 angular_speed #deg/s
    uint8 is_clockwise
    uint8 start_point
    uint8 yaw_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionHotpointTask(null);
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

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.angular_speed !== undefined) {
      resolved.angular_speed = msg.angular_speed;
    }
    else {
      resolved.angular_speed = 0.0
    }

    if (msg.is_clockwise !== undefined) {
      resolved.is_clockwise = msg.is_clockwise;
    }
    else {
      resolved.is_clockwise = 0
    }

    if (msg.start_point !== undefined) {
      resolved.start_point = msg.start_point;
    }
    else {
      resolved.start_point = 0
    }

    if (msg.yaw_mode !== undefined) {
      resolved.yaw_mode = msg.yaw_mode;
    }
    else {
      resolved.yaw_mode = 0
    }

    return resolved;
    }
};

module.exports = MissionHotpointTask;
