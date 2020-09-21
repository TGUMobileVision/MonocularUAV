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

class MissionWaypointAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_repeat = null;
      this.command_list = null;
      this.command_parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('action_repeat')) {
        this.action_repeat = initObj.action_repeat
      }
      else {
        this.action_repeat = 0;
      }
      if (initObj.hasOwnProperty('command_list')) {
        this.command_list = initObj.command_list
      }
      else {
        this.command_list = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('command_parameter')) {
        this.command_parameter = initObj.command_parameter
      }
      else {
        this.command_parameter = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWaypointAction
    // Serialize message field [action_repeat]
    bufferOffset = _serializer.uint8(obj.action_repeat, buffer, bufferOffset);
    // Check that the constant length array field [command_list] has the right length
    if (obj.command_list.length !== 16) {
      throw new Error('Unable to serialize array field command_list - length must be 16')
    }
    // Serialize message field [command_list]
    bufferOffset = _arraySerializer.uint8(obj.command_list, buffer, bufferOffset, 16);
    // Check that the constant length array field [command_parameter] has the right length
    if (obj.command_parameter.length !== 16) {
      throw new Error('Unable to serialize array field command_parameter - length must be 16')
    }
    // Serialize message field [command_parameter]
    bufferOffset = _arraySerializer.uint16(obj.command_parameter, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWaypointAction
    let len;
    let data = new MissionWaypointAction(null);
    // Deserialize message field [action_repeat]
    data.action_repeat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command_list]
    data.command_list = _arrayDeserializer.uint8(buffer, bufferOffset, 16)
    // Deserialize message field [command_parameter]
    data.command_parameter = _arrayDeserializer.uint16(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/MissionWaypointAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '940a2c85852b1259dcafa1d9b9ce78fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MissionWaypointAction(null);
    if (msg.action_repeat !== undefined) {
      resolved.action_repeat = msg.action_repeat;
    }
    else {
      resolved.action_repeat = 0
    }

    if (msg.command_list !== undefined) {
      resolved.command_list = msg.command_list;
    }
    else {
      resolved.command_list = new Array(16).fill(0)
    }

    if (msg.command_parameter !== undefined) {
      resolved.command_parameter = msg.command_parameter;
    }
    else {
      resolved.command_parameter = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = MissionWaypointAction;
