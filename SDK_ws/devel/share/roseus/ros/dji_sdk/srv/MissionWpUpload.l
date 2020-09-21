;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpUpload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpUpload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPUPLOAD")
  (make-package "DJI_SDK::MISSIONWPUPLOAD"))
(unless (find-package "DJI_SDK::MISSIONWPUPLOADREQUEST")
  (make-package "DJI_SDK::MISSIONWPUPLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPUPLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONWPUPLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpUploadRequest
  :super ros::object
  :slots (_waypoint_task ))

(defmethod dji_sdk::MissionWpUploadRequest
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

(defclass dji_sdk::MissionWpUploadResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionWpUploadResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:cmd_set __cmd_set) 0)
    ((:cmd_id __cmd_id) 0)
    ((:ack_data __ack_data) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _cmd_set (round __cmd_set))
   (setq _cmd_id (round __cmd_id))
   (setq _ack_data (round __ack_data))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:cmd_set
   (&optional __cmd_set)
   (if __cmd_set (setq _cmd_set __cmd_set)) _cmd_set)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:ack_data
   (&optional __ack_data)
   (if __ack_data (setq _ack_data __ack_data)) _ack_data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint8 _cmd_set
    1
    ;; uint8 _cmd_id
    1
    ;; uint32 _ack_data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _cmd_set
       (write-byte _cmd_set s)
     ;; uint8 _cmd_id
       (write-byte _cmd_id s)
     ;; uint32 _ack_data
       (write-long _ack_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _cmd_set
     (setq _cmd_set (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ack_data
     (setq _ack_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpUpload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpUpload :md5sum-) "e18bb47c4399b0ec1e363c0b0e75db0f")
(setf (get dji_sdk::MissionWpUpload :datatype-) "dji_sdk/MissionWpUpload")
(setf (get dji_sdk::MissionWpUpload :request) dji_sdk::MissionWpUploadRequest)
(setf (get dji_sdk::MissionWpUpload :response) dji_sdk::MissionWpUploadResponse)

(defmethod dji_sdk::MissionWpUploadRequest
  (:response () (instance dji_sdk::MissionWpUploadResponse :init)))

(setf (get dji_sdk::MissionWpUploadRequest :md5sum-) "e18bb47c4399b0ec1e363c0b0e75db0f")
(setf (get dji_sdk::MissionWpUploadRequest :datatype-) "dji_sdk/MissionWpUploadRequest")
(setf (get dji_sdk::MissionWpUploadRequest :definition-)
      "MissionWaypointTask waypoint_task

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
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::MissionWpUploadResponse :md5sum-) "e18bb47c4399b0ec1e363c0b0e75db0f")
(setf (get dji_sdk::MissionWpUploadResponse :datatype-) "dji_sdk/MissionWpUploadResponse")
(setf (get dji_sdk::MissionWpUploadResponse :definition-)
      "MissionWaypointTask waypoint_task

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
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/MissionWpUpload "e18bb47c4399b0ec1e363c0b0e75db0f")


