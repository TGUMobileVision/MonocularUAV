;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpGetInfo)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpGetInfo (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPGETINFO")
  (make-package "DJI_SDK::MISSIONWPGETINFO"))
(unless (find-package "DJI_SDK::MISSIONWPGETINFOREQUEST")
  (make-package "DJI_SDK::MISSIONWPGETINFOREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPGETINFORESPONSE")
  (make-package "DJI_SDK::MISSIONWPGETINFORESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpGetInfoRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionWpGetInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dji_sdk::MissionWpGetInfoResponse
  :super ros::object
  :slots (_waypoint_task ))

(defmethod dji_sdk::MissionWpGetInfoResponse
  (:init
   (&key
    ((:waypoint_task __waypoint_task) (instance dji_sdk::MissionWaypointTask :init))
    )
   (send-super :init)
   (setq _waypoint_task __waypoint_task)
   self)
  (:waypoint_task
   (&rest __waypoint_task)
   (if (keywordp (car __waypoint_task))
       (send* _waypoint_task __waypoint_task)
     (progn
       (if __waypoint_task (setq _waypoint_task (car __waypoint_task)))
       _waypoint_task)))
  (:serialization-length
   ()
   (+
    ;; dji_sdk/MissionWaypointTask _waypoint_task
    (send _waypoint_task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/MissionWaypointTask _waypoint_task
       (send _waypoint_task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_sdk/MissionWaypointTask _waypoint_task
     (send _waypoint_task :deserialize buf ptr-) (incf ptr- (send _waypoint_task :serialization-length))
   ;;
   self)
  )

(defclass dji_sdk::MissionWpGetInfo
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpGetInfo :md5sum-) "412556517acb90aa4c3e713fbb867865")
(setf (get dji_sdk::MissionWpGetInfo :datatype-) "dji_sdk/MissionWpGetInfo")
(setf (get dji_sdk::MissionWpGetInfo :request) dji_sdk::MissionWpGetInfoRequest)
(setf (get dji_sdk::MissionWpGetInfo :response) dji_sdk::MissionWpGetInfoResponse)

(defmethod dji_sdk::MissionWpGetInfoRequest
  (:response () (instance dji_sdk::MissionWpGetInfoResponse :init)))

(setf (get dji_sdk::MissionWpGetInfoRequest :md5sum-) "412556517acb90aa4c3e713fbb867865")
(setf (get dji_sdk::MissionWpGetInfoRequest :datatype-) "dji_sdk/MissionWpGetInfoRequest")
(setf (get dji_sdk::MissionWpGetInfoRequest :definition-)
      "---
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
")

(setf (get dji_sdk::MissionWpGetInfoResponse :md5sum-) "412556517acb90aa4c3e713fbb867865")
(setf (get dji_sdk::MissionWpGetInfoResponse :datatype-) "dji_sdk/MissionWpGetInfoResponse")
(setf (get dji_sdk::MissionWpGetInfoResponse :definition-)
      "---
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
")



(provide :dji_sdk/MissionWpGetInfo "412556517acb90aa4c3e713fbb867865")


