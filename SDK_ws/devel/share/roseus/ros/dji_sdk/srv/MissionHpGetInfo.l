;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpGetInfo)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpGetInfo (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPGETINFO")
  (make-package "DJI_SDK::MISSIONHPGETINFO"))
(unless (find-package "DJI_SDK::MISSIONHPGETINFOREQUEST")
  (make-package "DJI_SDK::MISSIONHPGETINFOREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPGETINFORESPONSE")
  (make-package "DJI_SDK::MISSIONHPGETINFORESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpGetInfoRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionHpGetInfoRequest
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

(defclass dji_sdk::MissionHpGetInfoResponse
  :super ros::object
  :slots (_hotpoint_task _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionHpGetInfoResponse
  (:init
   (&key
    ((:hotpoint_task __hotpoint_task) (instance dji_sdk::MissionHotpointTask :init))
    ((:cmd_set __cmd_set) 0)
    ((:cmd_id __cmd_id) 0)
    ((:ack_data __ack_data) 0)
    )
   (send-super :init)
   (setq _hotpoint_task __hotpoint_task)
   (setq _cmd_set (round __cmd_set))
   (setq _cmd_id (round __cmd_id))
   (setq _ack_data (round __ack_data))
   self)
  (:hotpoint_task
   (&rest __hotpoint_task)
   (if (keywordp (car __hotpoint_task))
       (send* _hotpoint_task __hotpoint_task)
     (progn
       (if __hotpoint_task (setq _hotpoint_task (car __hotpoint_task)))
       _hotpoint_task)))
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
    ;; dji_sdk/MissionHotpointTask _hotpoint_task
    (send _hotpoint_task :serialization-length)
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
     ;; dji_sdk/MissionHotpointTask _hotpoint_task
       (send _hotpoint_task :serialize s)
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
   ;; dji_sdk/MissionHotpointTask _hotpoint_task
     (send _hotpoint_task :deserialize buf ptr-) (incf ptr- (send _hotpoint_task :serialization-length))
   ;; uint8 _cmd_set
     (setq _cmd_set (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ack_data
     (setq _ack_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionHpGetInfo
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpGetInfo :md5sum-) "8c08f93488e030961f6001dc630fd2c2")
(setf (get dji_sdk::MissionHpGetInfo :datatype-) "dji_sdk/MissionHpGetInfo")
(setf (get dji_sdk::MissionHpGetInfo :request) dji_sdk::MissionHpGetInfoRequest)
(setf (get dji_sdk::MissionHpGetInfo :response) dji_sdk::MissionHpGetInfoResponse)

(defmethod dji_sdk::MissionHpGetInfoRequest
  (:response () (instance dji_sdk::MissionHpGetInfoResponse :init)))

(setf (get dji_sdk::MissionHpGetInfoRequest :md5sum-) "8c08f93488e030961f6001dc630fd2c2")
(setf (get dji_sdk::MissionHpGetInfoRequest :datatype-) "dji_sdk/MissionHpGetInfoRequest")
(setf (get dji_sdk::MissionHpGetInfoRequest :definition-)
      "---
MissionHotpointTask hotpoint_task

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

================================================================================
MSG: dji_sdk/MissionHotpointTask
float64 latitude  # degree
float64 longitude # degree
float64 altitude  # meter
float64 radius    # meter
float32 angular_speed #deg/s
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode
")

(setf (get dji_sdk::MissionHpGetInfoResponse :md5sum-) "8c08f93488e030961f6001dc630fd2c2")
(setf (get dji_sdk::MissionHpGetInfoResponse :datatype-) "dji_sdk/MissionHpGetInfoResponse")
(setf (get dji_sdk::MissionHpGetInfoResponse :definition-)
      "---
MissionHotpointTask hotpoint_task

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

================================================================================
MSG: dji_sdk/MissionHotpointTask
float64 latitude  # degree
float64 longitude # degree
float64 altitude  # meter
float64 radius    # meter
float32 angular_speed #deg/s
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode
")



(provide :dji_sdk/MissionHpGetInfo "8c08f93488e030961f6001dc630fd2c2")


