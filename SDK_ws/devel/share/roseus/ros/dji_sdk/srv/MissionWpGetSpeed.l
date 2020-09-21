;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpGetSpeed)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpGetSpeed (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPGETSPEED")
  (make-package "DJI_SDK::MISSIONWPGETSPEED"))
(unless (find-package "DJI_SDK::MISSIONWPGETSPEEDREQUEST")
  (make-package "DJI_SDK::MISSIONWPGETSPEEDREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPGETSPEEDRESPONSE")
  (make-package "DJI_SDK::MISSIONWPGETSPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpGetSpeedRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionWpGetSpeedRequest
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

(defclass dji_sdk::MissionWpGetSpeedResponse
  :super ros::object
  :slots (_speed _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionWpGetSpeedResponse
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:cmd_set __cmd_set) 0)
    ((:cmd_id __cmd_id) 0)
    ((:ack_data __ack_data) 0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _cmd_set (round __cmd_set))
   (setq _cmd_id (round __cmd_id))
   (setq _ack_data (round __ack_data))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
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
    ;; float32 _speed
    4
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
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _cmd_set
     (setq _cmd_set (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ack_data
     (setq _ack_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpGetSpeed
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpGetSpeed :md5sum-) "24b8cc8834f9763e3d1c641b02dfffb4")
(setf (get dji_sdk::MissionWpGetSpeed :datatype-) "dji_sdk/MissionWpGetSpeed")
(setf (get dji_sdk::MissionWpGetSpeed :request) dji_sdk::MissionWpGetSpeedRequest)
(setf (get dji_sdk::MissionWpGetSpeed :response) dji_sdk::MissionWpGetSpeedResponse)

(defmethod dji_sdk::MissionWpGetSpeedRequest
  (:response () (instance dji_sdk::MissionWpGetSpeedResponse :init)))

(setf (get dji_sdk::MissionWpGetSpeedRequest :md5sum-) "24b8cc8834f9763e3d1c641b02dfffb4")
(setf (get dji_sdk::MissionWpGetSpeedRequest :datatype-) "dji_sdk/MissionWpGetSpeedRequest")
(setf (get dji_sdk::MissionWpGetSpeedRequest :definition-)
      "---
float32 speed

uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")

(setf (get dji_sdk::MissionWpGetSpeedResponse :md5sum-) "24b8cc8834f9763e3d1c641b02dfffb4")
(setf (get dji_sdk::MissionWpGetSpeedResponse :datatype-) "dji_sdk/MissionWpGetSpeedResponse")
(setf (get dji_sdk::MissionWpGetSpeedResponse :definition-)
      "---
float32 speed

uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")



(provide :dji_sdk/MissionWpGetSpeed "24b8cc8834f9763e3d1c641b02dfffb4")


