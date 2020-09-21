;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWaypoint)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWaypoint (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWAYPOINT")
  (make-package "DJI_SDK::MISSIONWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude MissionWaypoint.msg.html


(defclass dji_sdk::MissionWaypoint
  :super ros::object
  :slots (_latitude _longitude _altitude _damping_distance _target_yaw _target_gimbal_pitch _turn_mode _has_action _action_time_limit _waypoint_action ))

(defmethod dji_sdk::MissionWaypoint
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:damping_distance __damping_distance) 0.0)
    ((:target_yaw __target_yaw) 0)
    ((:target_gimbal_pitch __target_gimbal_pitch) 0)
    ((:turn_mode __turn_mode) 0)
    ((:has_action __has_action) 0)
    ((:action_time_limit __action_time_limit) 0)
    ((:waypoint_action __waypoint_action) (instance dji_sdk::MissionWaypointAction :init))
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _damping_distance (float __damping_distance))
   (setq _target_yaw (round __target_yaw))
   (setq _target_gimbal_pitch (round __target_gimbal_pitch))
   (setq _turn_mode (round __turn_mode))
   (setq _has_action (round __has_action))
   (setq _action_time_limit (round __action_time_limit))
   (setq _waypoint_action __waypoint_action)
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:damping_distance
   (&optional __damping_distance)
   (if __damping_distance (setq _damping_distance __damping_distance)) _damping_distance)
  (:target_yaw
   (&optional __target_yaw)
   (if __target_yaw (setq _target_yaw __target_yaw)) _target_yaw)
  (:target_gimbal_pitch
   (&optional __target_gimbal_pitch)
   (if __target_gimbal_pitch (setq _target_gimbal_pitch __target_gimbal_pitch)) _target_gimbal_pitch)
  (:turn_mode
   (&optional __turn_mode)
   (if __turn_mode (setq _turn_mode __turn_mode)) _turn_mode)
  (:has_action
   (&optional __has_action)
   (if __has_action (setq _has_action __has_action)) _has_action)
  (:action_time_limit
   (&optional __action_time_limit)
   (if __action_time_limit (setq _action_time_limit __action_time_limit)) _action_time_limit)
  (:waypoint_action
   (&rest __waypoint_action)
   (if (keywordp (car __waypoint_action))
       (send* _waypoint_action __waypoint_action)
     (progn
       (if __waypoint_action (setq _waypoint_action (car __waypoint_action)))
       _waypoint_action)))
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _altitude
    4
    ;; float32 _damping_distance
    4
    ;; int16 _target_yaw
    2
    ;; int16 _target_gimbal_pitch
    2
    ;; uint8 _turn_mode
    1
    ;; uint8 _has_action
    1
    ;; uint16 _action_time_limit
    2
    ;; dji_sdk/MissionWaypointAction _waypoint_action
    (send _waypoint_action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _damping_distance
       (sys::poke _damping_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _target_yaw
       (write-word _target_yaw s)
     ;; int16 _target_gimbal_pitch
       (write-word _target_gimbal_pitch s)
     ;; uint8 _turn_mode
       (write-byte _turn_mode s)
     ;; uint8 _has_action
       (write-byte _has_action s)
     ;; uint16 _action_time_limit
       (write-word _action_time_limit s)
     ;; dji_sdk/MissionWaypointAction _waypoint_action
       (send _waypoint_action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _damping_distance
     (setq _damping_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _target_yaw
     (setq _target_yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_gimbal_pitch
     (setq _target_gimbal_pitch (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _turn_mode
     (setq _turn_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _has_action
     (setq _has_action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _action_time_limit
     (setq _action_time_limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dji_sdk/MissionWaypointAction _waypoint_action
     (send _waypoint_action :deserialize buf ptr-) (incf ptr- (send _waypoint_action :serialization-length))
   ;;
   self)
  )

(setf (get dji_sdk::MissionWaypoint :md5sum-) "22e006a33239b0dd80a9840e2fb0dd19")
(setf (get dji_sdk::MissionWaypoint :datatype-) "dji_sdk/MissionWaypoint")
(setf (get dji_sdk::MissionWaypoint :definition-)
      "float64 latitude          # degree
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



(provide :dji_sdk/MissionWaypoint "22e006a33239b0dd80a9840e2fb0dd19")


