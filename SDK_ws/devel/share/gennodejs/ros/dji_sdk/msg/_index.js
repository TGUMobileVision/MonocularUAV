
"use strict";

let MissionHotpointTask = require('./MissionHotpointTask.js');
let MobileData = require('./MobileData.js');
let VOPosition = require('./VOPosition.js');
let FlightAnomaly = require('./FlightAnomaly.js');
let WaypointList = require('./WaypointList.js');
let Gimbal = require('./Gimbal.js');
let MissionWaypointTask = require('./MissionWaypointTask.js');
let MissionWaypoint = require('./MissionWaypoint.js');
let PayloadData = require('./PayloadData.js');
let Waypoint = require('./Waypoint.js');
let GPSUTC = require('./GPSUTC.js');
let FCTimeInUTC = require('./FCTimeInUTC.js');
let MissionWaypointAction = require('./MissionWaypointAction.js');

module.exports = {
  MissionHotpointTask: MissionHotpointTask,
  MobileData: MobileData,
  VOPosition: VOPosition,
  FlightAnomaly: FlightAnomaly,
  WaypointList: WaypointList,
  Gimbal: Gimbal,
  MissionWaypointTask: MissionWaypointTask,
  MissionWaypoint: MissionWaypoint,
  PayloadData: PayloadData,
  Waypoint: Waypoint,
  GPSUTC: GPSUTC,
  FCTimeInUTC: FCTimeInUTC,
  MissionWaypointAction: MissionWaypointAction,
};
