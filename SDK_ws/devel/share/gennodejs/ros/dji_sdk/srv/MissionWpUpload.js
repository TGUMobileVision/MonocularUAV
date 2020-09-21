// Auto-generated. Do not edit!

// (in-package dji_sdk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionWaypointTask = require('../msg/MissionWaypointTask.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionWpUploadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_task = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_task')) {
        this.waypoint_task = initObj.waypoint_task
      }
      else {
        this.waypoint_task = new MissionWaypointTask();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpUploadRequest
    // Serialize message field [waypoint_task]
    bufferOffset = MissionWaypointTask.serialize(obj.waypoint_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpUploadRequest
    let len;
    let data = new MissionWpUploadRequest(null);
    // Deserialize message field [waypoint_task]
    data.waypoint_task = MissionWaypointTask.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MissionWaypointTask.getMessageSize(object.waypoint_task);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpUploadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '412556517acb90aa4c3e713fbb867865';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionWaypointTask waypoint_task
    
    ================================================================================
    MSG: dji_sdk/MissionWaypointTask
    # constant for action_on_finish
    uint8 FINISH_NO_ACTION       = 0  # no action
    uint8 FINISH_RETURN_TO_HOME  = 1  # return to home
    uint8 FINISH_AUTO_LANDING    = 2  # auto landing
    uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0
    uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit
    
    # constant for yaw_mode
    uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)
    uint8 YAW_MODE_LOCK     = 1       # lock as an initial value
    uint8 YAW_MODE_RC       = 2       # controlled by RC
    uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)
    
    # constant for trace_mode
    uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt
    uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task
    
    # constants for action_on_rc_lost
    uint8 ACTION_FREE       = 0       # exit waypoint and failsafe
    uint8 ACTION_AUTO       = 1       # continue the waypoint
    
    # constants for gimbal_pitch_mode
    uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal
    uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal
    
    float32 velocity_range    # Maximum speed joystick input(2~15m)
    float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)
    uint8 action_on_finish    # See constants above for possible actions
    uint8 mission_exec_times  # 1: once ; 2: twice
    uint8 yaw_mode            # see constants above for possible yaw modes
    uint8 trace_mode          # see constants above for possible trace modes
    uint8 action_on_rc_lost   # see constants above for possible actions
    uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes
    MissionWaypoint[] mission_waypoint  # a vector of waypoints
    
    
    ================================================================================
    MSG: dji_sdk/MissionWaypoint
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
    const resolved = new MissionWpUploadRequest(null);
    if (msg.waypoint_task !== undefined) {
      resolved.waypoint_task = MissionWaypointTask.Resolve(msg.waypoint_task)
    }
    else {
      resolved.waypoint_task = new MissionWaypointTask()
    }

    return resolved;
    }
};

class MissionWpUploadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.cmd_set = null;
      this.cmd_id = null;
      this.ack_data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('cmd_set')) {
        this.cmd_set = initObj.cmd_set
      }
      else {
        this.cmd_set = 0;
      }
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('ack_data')) {
        this.ack_data = initObj.ack_data
      }
      else {
        this.ack_data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWpUploadResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [cmd_set]
    bufferOffset = _serializer.uint8(obj.cmd_set, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.uint8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [ack_data]
    bufferOffset = _serializer.uint32(obj.ack_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWpUploadResponse
    let len;
    let data = new MissionWpUploadResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cmd_set]
    data.cmd_set = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ack_data]
    data.ack_data = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_sdk/MissionWpUploadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f03b0bc279b265c40946c1011df83013';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    uint8 cmd_set
    uint8 cmd_id
    uint32 ack_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWpUploadResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.cmd_set !== undefined) {
      resolved.cmd_set = msg.cmd_set;
    }
    else {
      resolved.cmd_set = 0
    }

    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.ack_data !== undefined) {
      resolved.ack_data = msg.ack_data;
    }
    else {
      resolved.ack_data = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MissionWpUploadRequest,
  Response: MissionWpUploadResponse,
  md5sum() { return 'e18bb47c4399b0ec1e363c0b0e75db0f'; },
  datatype() { return 'dji_sdk/MissionWpUpload'; }
};
