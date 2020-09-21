;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpSetSpeed)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpSetSpeed (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPSETSPEED")
  (make-package "DJI_SDK::MISSIONWPSETSPEED"))
(unless (find-package "DJI_SDK::MISSIONWPSETSPEEDREQUEST")
  (make-package "DJI_SDK::MISSIONWPSETSPEEDREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPSETSPEEDRESPONSE")
  (make-package "DJI_SDK::MISSIONWPSETSPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpSetSpeedRequest
  :super ros::object
  :slots (_speed ))

(defmethod dji_sdk::MissionWpSetSpeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpSetSpeedResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionWpSetSpeedResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpSetSpeed
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpSetSpeed :md5sum-) "b087da1f6984d35b6029aa78841b05a6")
(setf (get dji_sdk::MissionWpSetSpeed :datatype-) "dji_sdk/MissionWpSetSpeed")
(setf (get dji_sdk::MissionWpSetSpeed :request) dji_sdk::MissionWpSetSpeedRequest)
(setf (get dji_sdk::MissionWpSetSpeed :response) dji_sdk::MissionWpSetSpeedResponse)

(defmethod dji_sdk::MissionWpSetSpeedRequest
  (:response () (instance dji_sdk::MissionWpSetSpeedResponse :init)))

(setf (get dji_sdk::MissionWpSetSpeedRequest :md5sum-) "b087da1f6984d35b6029aa78841b05a6")
(setf (get dji_sdk::MissionWpSetSpeedRequest :datatype-) "dji_sdk/MissionWpSetSpeedRequest")
(setf (get dji_sdk::MissionWpSetSpeedRequest :definition-)
      "float32 speed
---
bool result
")

(setf (get dji_sdk::MissionWpSetSpeedResponse :md5sum-) "b087da1f6984d35b6029aa78841b05a6")
(setf (get dji_sdk::MissionWpSetSpeedResponse :datatype-) "dji_sdk/MissionWpSetSpeedResponse")
(setf (get dji_sdk::MissionWpSetSpeedResponse :definition-)
      "float32 speed
---
bool result
")



(provide :dji_sdk/MissionWpSetSpeed "b087da1f6984d35b6029aa78841b05a6")


