
"use strict";

let QueryDroneVersion = require('./QueryDroneVersion.js')
let MissionHpGetInfo = require('./MissionHpGetInfo.js')
let MissionWpUpload = require('./MissionWpUpload.js')
let MissionHpAction = require('./MissionHpAction.js')
let SDKControlAuthority = require('./SDKControlAuthority.js')
let CameraAction = require('./CameraAction.js')
let MissionWpAction = require('./MissionWpAction.js')
let MissionStatus = require('./MissionStatus.js')
let SendPayloadData = require('./SendPayloadData.js')
let MissionWpSetSpeed = require('./MissionWpSetSpeed.js')
let MFIOConfig = require('./MFIOConfig.js')
let MissionHpUpdateYawRate = require('./MissionHpUpdateYawRate.js')
let MissionHpUpload = require('./MissionHpUpload.js')
let SendMobileData = require('./SendMobileData.js')
let DroneArmControl = require('./DroneArmControl.js')
let MissionHpUpdateRadius = require('./MissionHpUpdateRadius.js')
let MissionHpResetYaw = require('./MissionHpResetYaw.js')
let MFIOSetValue = require('./MFIOSetValue.js')
let StereoDepthSubscription = require('./StereoDepthSubscription.js')
let StereoVGASubscription = require('./StereoVGASubscription.js')
let SetupCameraStream = require('./SetupCameraStream.js')
let MissionWpGetSpeed = require('./MissionWpGetSpeed.js')
let DroneTaskControl = require('./DroneTaskControl.js')
let Stereo240pSubscription = require('./Stereo240pSubscription.js')
let SetHardSync = require('./SetHardSync.js')
let MissionWpGetInfo = require('./MissionWpGetInfo.js')
let SetLocalPosRef = require('./SetLocalPosRef.js')
let Activation = require('./Activation.js')

module.exports = {
  QueryDroneVersion: QueryDroneVersion,
  MissionHpGetInfo: MissionHpGetInfo,
  MissionWpUpload: MissionWpUpload,
  MissionHpAction: MissionHpAction,
  SDKControlAuthority: SDKControlAuthority,
  CameraAction: CameraAction,
  MissionWpAction: MissionWpAction,
  MissionStatus: MissionStatus,
  SendPayloadData: SendPayloadData,
  MissionWpSetSpeed: MissionWpSetSpeed,
  MFIOConfig: MFIOConfig,
  MissionHpUpdateYawRate: MissionHpUpdateYawRate,
  MissionHpUpload: MissionHpUpload,
  SendMobileData: SendMobileData,
  DroneArmControl: DroneArmControl,
  MissionHpUpdateRadius: MissionHpUpdateRadius,
  MissionHpResetYaw: MissionHpResetYaw,
  MFIOSetValue: MFIOSetValue,
  StereoDepthSubscription: StereoDepthSubscription,
  StereoVGASubscription: StereoVGASubscription,
  SetupCameraStream: SetupCameraStream,
  MissionWpGetSpeed: MissionWpGetSpeed,
  DroneTaskControl: DroneTaskControl,
  Stereo240pSubscription: Stereo240pSubscription,
  SetHardSync: SetHardSync,
  MissionWpGetInfo: MissionWpGetInfo,
  SetLocalPosRef: SetLocalPosRef,
  Activation: Activation,
};
