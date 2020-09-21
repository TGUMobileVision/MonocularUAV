;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpUpload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpUpload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPUPLOAD")
  (make-package "DJI_SDK::MISSIONHPUPLOAD"))
(unless (find-package "DJI_SDK::MISSIONHPUPLOADREQUEST")
  (make-package "DJI_SDK::MISSIONHPUPLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPUPLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONHPUPLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpUploadRequest
  :super ros::object
  :slots (_hotpoint_task ))

(defmethod dji_sdk::MissionHpUploadRequest
  (:init
   (&key
    ((:hotpoint_task __hotpoint_task) (instance dji_sdk::MissionHotpointTask :init))
    )
   (send-super :init)
   (setq _hotpoint_task __hotpoint_task)
   self)
  (:hotpoint_task
   (&rest __hotpoint_task)
   (if (keywordp (car __hotpoint_task))
       (send* _hotpoint_task __hotpoint_task)
     (progn
       (if __hotpoint_task (setq _hotpoint_task (car __hotpoint_task)))
       _hotpoint_task)))
  (:serialization-length
   ()
   (+
    ;; dji_sdk/MissionHotpointTask _hotpoint_task
    (send _hotpoint_task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/MissionHotpointTask _hotpoint_task
       (send _hotpoint_task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_sdk/MissionHotpointTask _hotpoint_task
     (send _hotpoint_task :deserialize buf ptr-) (incf ptr- (send _hotpoint_task :serialization-length))
   ;;
   self)
  )

(defclass dji_sdk::MissionHpUploadResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionHpUploadResponse
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

(defclass dji_sdk::MissionHpUpload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpUpload :md5sum-) "af658341aaed3be3d18e0bcbefcd2cd9")
(setf (get dji_sdk::MissionHpUpload :datatype-) "dji_sdk/MissionHpUpload")
(setf (get dji_sdk::MissionHpUpload :request) dji_sdk::MissionHpUploadRequest)
(setf (get dji_sdk::MissionHpUpload :response) dji_sdk::MissionHpUploadResponse)

(defmethod dji_sdk::MissionHpUploadRequest
  (:response () (instance dji_sdk::MissionHpUploadResponse :init)))

(setf (get dji_sdk::MissionHpUploadRequest :md5sum-) "af658341aaed3be3d18e0bcbefcd2cd9")
(setf (get dji_sdk::MissionHpUploadRequest :datatype-) "dji_sdk/MissionHpUploadRequest")
(setf (get dji_sdk::MissionHpUploadRequest :definition-)
      "MissionHotpointTask hotpoint_task

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
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")

(setf (get dji_sdk::MissionHpUploadResponse :md5sum-) "af658341aaed3be3d18e0bcbefcd2cd9")
(setf (get dji_sdk::MissionHpUploadResponse :datatype-) "dji_sdk/MissionHpUploadResponse")
(setf (get dji_sdk::MissionHpUploadResponse :definition-)
      "MissionHotpointTask hotpoint_task

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
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")



(provide :dji_sdk/MissionHpUpload "af658341aaed3be3d18e0bcbefcd2cd9")


