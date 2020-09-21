;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWaypointTask)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWaypointTask (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWAYPOINTTASK")
  (make-package "DJI_SDK::MISSIONWAYPOINTTASK"))

(in-package "ROS")
;;//! \htmlinclude MissionWaypointTask.msg.html


(intern "*FINISH_NO_ACTION*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*FINISH_NO_ACTION* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*FINISH_NO_ACTION* 0)
(intern "*FINISH_RETURN_TO_HOME*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*FINISH_RETURN_TO_HOME* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*FINISH_RETURN_TO_HOME* 1)
(intern "*FINISH_AUTO_LANDING*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*FINISH_AUTO_LANDING* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*FINISH_AUTO_LANDING* 2)
(intern "*FINISH_RETURN_TO_POINT*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*FINISH_RETURN_TO_POINT* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*FINISH_RETURN_TO_POINT* 3)
(intern "*FINISH_NO_EXIT*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*FINISH_NO_EXIT* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*FINISH_NO_EXIT* 4)
(intern "*YAW_MODE_AUTO*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*YAW_MODE_AUTO* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*YAW_MODE_AUTO* 0)
(intern "*YAW_MODE_LOCK*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*YAW_MODE_LOCK* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*YAW_MODE_LOCK* 1)
(intern "*YAW_MODE_RC*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*YAW_MODE_RC* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*YAW_MODE_RC* 2)
(intern "*YAW_MODE_WAYPOINT*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*YAW_MODE_WAYPOINT* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*YAW_MODE_WAYPOINT* 3)
(intern "*TRACE_POINT*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*TRACE_POINT* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*TRACE_POINT* 0)
(intern "*TRACE_COORDINATED*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*TRACE_COORDINATED* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*TRACE_COORDINATED* 1)
(intern "*ACTION_FREE*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*ACTION_FREE* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*ACTION_FREE* 0)
(intern "*ACTION_AUTO*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*ACTION_AUTO* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*ACTION_AUTO* 1)
(intern "*GIMBAL_PITCH_FREE*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*GIMBAL_PITCH_FREE* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*GIMBAL_PITCH_FREE* 0)
(intern "*GIMBAL_PITCH_AUTO*" (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(shadow '*GIMBAL_PITCH_AUTO* (find-package "DJI_SDK::MISSIONWAYPOINTTASK"))
(defconstant dji_sdk::MissionWaypointTask::*GIMBAL_PITCH_AUTO* 1)
(defclass dji_sdk::MissionWaypointTask
  :super ros::object
  :slots (_velocity_range _idle_velocity _action_on_finish _mission_exec_times _yaw_mode _trace_mode _action_on_rc_lost _gimbal_pitch_mode _mission_waypoint ))

(defmethod dji_sdk::MissionWaypointTask
  (:init
   (&key
    ((:velocity_range __velocity_range) 0.0)
    ((:idle_velocity __idle_velocity) 0.0)
    ((:action_on_finish __action_on_finish) 0)
    ((:mission_exec_times __mission_exec_times) 0)
    ((:yaw_mode __yaw_mode) 0)
    ((:trace_mode __trace_mode) 0)
    ((:action_on_rc_lost __action_on_rc_lost) 0)
    ((:gimbal_pitch_mode __gimbal_pitch_mode) 0)
    ((:mission_waypoint __mission_waypoint) (let (r) (dotimes (i 0) (push (instance dji_sdk::MissionWaypoint :init) r)) r))
    )
   (send-super :init)
   (setq _velocity_range (float __velocity_range))
   (setq _idle_velocity (float __idle_velocity))
   (setq _action_on_finish (round __action_on_finish))
   (setq _mission_exec_times (round __mission_exec_times))
   (setq _yaw_mode (round __yaw_mode))
   (setq _trace_mode (round __trace_mode))
   (setq _action_on_rc_lost (round __action_on_rc_lost))
   (setq _gimbal_pitch_mode (round __gimbal_pitch_mode))
   (setq _mission_waypoint __mission_waypoint)
   self)
  (:velocity_range
   (&optional __velocity_range)
   (if __velocity_range (setq _velocity_range __velocity_range)) _velocity_range)
  (:idle_velocity
   (&optional __idle_velocity)
   (if __idle_velocity (setq _idle_velocity __idle_velocity)) _idle_velocity)
  (:action_on_finish
   (&optional __action_on_finish)
   (if __action_on_finish (setq _action_on_finish __action_on_finish)) _action_on_finish)
  (:mission_exec_times
   (&optional __mission_exec_times)
   (if __mission_exec_times (setq _mission_exec_times __mission_exec_times)) _mission_exec_times)
  (:yaw_mode
   (&optional __yaw_mode)
   (if __yaw_mode (setq _yaw_mode __yaw_mode)) _yaw_mode)
  (:trace_mode
   (&optional __trace_mode)
   (if __trace_mode (setq _trace_mode __trace_mode)) _trace_mode)
  (:action_on_rc_lost
   (&optional __action_on_rc_lost)
   (if __action_on_rc_lost (setq _action_on_rc_lost __action_on_rc_lost)) _action_on_rc_lost)
  (:gimbal_pitch_mode
   (&optional __gimbal_pitch_mode)
   (if __gimbal_pitch_mode (setq _gimbal_pitch_mode __gimbal_pitch_mode)) _gimbal_pitch_mode)
  (:mission_waypoint
   (&rest __mission_waypoint)
   (if (keywordp (car __mission_waypoint))
       (send* _mission_waypoint __mission_waypoint)
     (progn
       (if __mission_waypoint (setq _mission_waypoint (car __mission_waypoint)))
       _mission_waypoint)))
  (:serialization-length
   ()
   (+
    ;; float32 _velocity_range
    4
    ;; float32 _idle_velocity
    4
    ;; uint8 _action_on_finish
    1
    ;; uint8 _mission_exec_times
    1
    ;; uint8 _yaw_mode
    1
    ;; uint8 _trace_mode
    1
    ;; uint8 _action_on_rc_lost
    1
    ;; uint8 _gimbal_pitch_mode
    1
    ;; dji_sdk/MissionWaypoint[] _mission_waypoint
    (apply #'+ (send-all _mission_waypoint :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity_range
       (sys::poke _velocity_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _idle_velocity
       (sys::poke _idle_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _action_on_finish
       (write-byte _action_on_finish s)
     ;; uint8 _mission_exec_times
       (write-byte _mission_exec_times s)
     ;; uint8 _yaw_mode
       (write-byte _yaw_mode s)
     ;; uint8 _trace_mode
       (write-byte _trace_mode s)
     ;; uint8 _action_on_rc_lost
       (write-byte _action_on_rc_lost s)
     ;; uint8 _gimbal_pitch_mode
       (write-byte _gimbal_pitch_mode s)
     ;; dji_sdk/MissionWaypoint[] _mission_waypoint
     (write-long (length _mission_waypoint) s)
     (dolist (elem _mission_waypoint)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity_range
     (setq _velocity_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _idle_velocity
     (setq _idle_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _action_on_finish
     (setq _action_on_finish (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mission_exec_times
     (setq _mission_exec_times (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_mode
     (setq _yaw_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _trace_mode
     (setq _trace_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action_on_rc_lost
     (setq _action_on_rc_lost (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gimbal_pitch_mode
     (setq _gimbal_pitch_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_sdk/MissionWaypoint[] _mission_waypoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_waypoint (let (r) (dotimes (i n) (push (instance dji_sdk::MissionWaypoint :init) r)) r))
     (dolist (elem- _mission_waypoint)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dji_sdk::MissionWaypointTask :md5sum-) "c869e0f592c937d8202723285e6957d0")
(setf (get dji_sdk::MissionWaypointTask :datatype-) "dji_sdk/MissionWaypointTask")
(setf (get dji_sdk::MissionWaypointTask :definition-)
      "# constant for action_on_finish
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



(provide :dji_sdk/MissionWaypointTask "c869e0f592c937d8202723285e6957d0")


