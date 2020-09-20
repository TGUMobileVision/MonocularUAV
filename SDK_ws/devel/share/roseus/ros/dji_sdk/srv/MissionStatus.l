;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionStatus)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionStatus (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONSTATUS")
  (make-package "DJI_SDK::MISSIONSTATUS"))
(unless (find-package "DJI_SDK::MISSIONSTATUSREQUEST")
  (make-package "DJI_SDK::MISSIONSTATUSREQUEST"))
(unless (find-package "DJI_SDK::MISSIONSTATUSRESPONSE")
  (make-package "DJI_SDK::MISSIONSTATUSRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionStatusRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionStatusRequest
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

(defclass dji_sdk::MissionStatusResponse
  :super ros::object
  :slots (_waypoint_mission_count _hotpoint_mission_count ))

(defmethod dji_sdk::MissionStatusResponse
  (:init
   (&key
    ((:waypoint_mission_count __waypoint_mission_count) 0)
    ((:hotpoint_mission_count __hotpoint_mission_count) 0)
    )
   (send-super :init)
   (setq _waypoint_mission_count (round __waypoint_mission_count))
   (setq _hotpoint_mission_count (round __hotpoint_mission_count))
   self)
  (:waypoint_mission_count
   (&optional __waypoint_mission_count)
   (if __waypoint_mission_count (setq _waypoint_mission_count __waypoint_mission_count)) _waypoint_mission_count)
  (:hotpoint_mission_count
   (&optional __hotpoint_mission_count)
   (if __hotpoint_mission_count (setq _hotpoint_mission_count __hotpoint_mission_count)) _hotpoint_mission_count)
  (:serialization-length
   ()
   (+
    ;; uint8 _waypoint_mission_count
    1
    ;; uint8 _hotpoint_mission_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _waypoint_mission_count
       (write-byte _waypoint_mission_count s)
     ;; uint8 _hotpoint_mission_count
       (write-byte _hotpoint_mission_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _waypoint_mission_count
     (setq _waypoint_mission_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hotpoint_mission_count
     (setq _hotpoint_mission_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionStatus
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionStatus :md5sum-) "76ed0b909c77c6ce98df135419939be9")
(setf (get dji_sdk::MissionStatus :datatype-) "dji_sdk/MissionStatus")
(setf (get dji_sdk::MissionStatus :request) dji_sdk::MissionStatusRequest)
(setf (get dji_sdk::MissionStatus :response) dji_sdk::MissionStatusResponse)

(defmethod dji_sdk::MissionStatusRequest
  (:response () (instance dji_sdk::MissionStatusResponse :init)))

(setf (get dji_sdk::MissionStatusRequest :md5sum-) "76ed0b909c77c6ce98df135419939be9")
(setf (get dji_sdk::MissionStatusRequest :datatype-) "dji_sdk/MissionStatusRequest")
(setf (get dji_sdk::MissionStatusRequest :definition-)
      "---
uint8 waypoint_mission_count
uint8 hotpoint_mission_count
")

(setf (get dji_sdk::MissionStatusResponse :md5sum-) "76ed0b909c77c6ce98df135419939be9")
(setf (get dji_sdk::MissionStatusResponse :datatype-) "dji_sdk/MissionStatusResponse")
(setf (get dji_sdk::MissionStatusResponse :definition-)
      "---
uint8 waypoint_mission_count
uint8 hotpoint_mission_count
")



(provide :dji_sdk/MissionStatus "76ed0b909c77c6ce98df135419939be9")


