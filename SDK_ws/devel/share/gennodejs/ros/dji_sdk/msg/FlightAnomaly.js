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

class FlightAnomaly {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlightAnomaly
    // Serialize message field [data]
    bufferOffset = _serializer.uint32(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlightAnomaly
    let len;
    let data = new FlightAnomaly(null);
    // Deserialize message field [data]
    data.data = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_sdk/FlightAnomaly';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '098979ec2b2d91dd43226500118b8680';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Here is an example how to use FlightAnomaly msg:
    #
    # void flightAnomalyCallback(const dji_sdk::FlightAnomaly::ConstPtr & msg)
    # {
    #   uint32_t flightAnomalyData = msg->data;
    #   if(flightAnomalyData)
    #   {
    #     ROS_INFO("Flight Anomaly Reported by Flight Controller. Here are details:");
    #     if(flightAnomalyData && dji_sdk::FlightAnomaly::COMPASS_INSTALLATION_ERROR)
    #     {
    #         ROS_INFO("COMPASS_INSTALLATION_ERROR");
    #     }
    #
    #     if(flightAnomalyData && dji_sdk::FlightAnomaly::IMU_INSTALLATION_ERROR)
    #     {
    #         ROS_INFO("IMU_INSTALLATION_ERROR");
    #     }
    #
    #     // etc...
    #   }
    # }
    #
    #
    
    # constants for anomaly details
    uint32 IMPACT_IN_AIR              = 1     #
    uint32 RANDOM_FLY                 = 2     #
    uint32 VERTICAL_CONTROL_FAIL      = 4     #
    uint32 HORIZONTAL_CONTROL_FAIL    = 8     #
    uint32 YAW_CONTROL_FAIL           = 16    #
    uint32 AIRCRAFT_IS_FALLING        = 32    #
    uint32 STRONG_WIND_LEVEL1         = 64    #
    uint32 STRONG_WIND_LEVEL2         = 128   #
    uint32 COMPASS_INSTALLATION_ERROR = 256   #
    uint32 IMU_INSTALLATION_ERROR     = 512   #
    uint32 ESC_TEMPERATURE_HIGH       = 1024  #
    uint32 ESC_DISCONNECTED           = 2048  #
    uint32 GPS_YAW_ERROR              = 4096  #
    
    #
    uint32 data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlightAnomaly(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

// Constants for message
FlightAnomaly.Constants = {
  IMPACT_IN_AIR: 1,
  RANDOM_FLY: 2,
  VERTICAL_CONTROL_FAIL: 4,
  HORIZONTAL_CONTROL_FAIL: 8,
  YAW_CONTROL_FAIL: 16,
  AIRCRAFT_IS_FALLING: 32,
  STRONG_WIND_LEVEL1: 64,
  STRONG_WIND_LEVEL2: 128,
  COMPASS_INSTALLATION_ERROR: 256,
  IMU_INSTALLATION_ERROR: 512,
  ESC_TEMPERATURE_HIGH: 1024,
  ESC_DISCONNECTED: 2048,
  GPS_YAW_ERROR: 4096,
}

module.exports = FlightAnomaly;
