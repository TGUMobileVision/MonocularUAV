;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpUpdateYawRate)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpUpdateYawRate (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPUPDATEYAWRATE")
  (make-package "DJI_SDK::MISSIONHPUPDATEYAWRATE"))
(unless (find-package "DJI_SDK::MISSIONHPUPDATEYAWRATEREQUEST")
  (make-package "DJI_SDK::MISSIONHPUPDATEYAWRATEREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPUPDATEYAWRATERESPONSE")
  (make-package "DJI_SDK::MISSIONHPUPDATEYAWRATERESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpUpdateYawRateRequest
  :super ros::object
  :slots (_yaw_rate _direction ))

(defmethod dji_sdk::MissionHpUpdateYawRateRequest
  (:init
   (&key
    ((:yaw_rate __yaw_rate) 0.0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _yaw_rate (float __yaw_rate))
   (setq _direction (round __direction))
   self)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; float32 _yaw_rate
    4
    ;; uint8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionHpUpdateYawRateResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionHpUpdateYawRateResponse
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

(defclass dji_sdk::MissionHpUpdateYawRate
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpUpdateYawRate :md5sum-) "e4b46552667899a74d58ef421a1fe415")
(setf (get dji_sdk::MissionHpUpdateYawRate :datatype-) "dji_sdk/MissionHpUpdateYawRate")
(setf (get dji_sdk::MissionHpUpdateYawRate :request) dji_sdk::MissionHpUpdateYawRateRequest)
(setf (get dji_sdk::MissionHpUpdateYawRate :response) dji_sdk::MissionHpUpdateYawRateResponse)

(defmethod dji_sdk::MissionHpUpdateYawRateRequest
  (:response () (instance dji_sdk::MissionHpUpdateYawRateResponse :init)))

(setf (get dji_sdk::MissionHpUpdateYawRateRequest :md5sum-) "e4b46552667899a74d58ef421a1fe415")
(setf (get dji_sdk::MissionHpUpdateYawRateRequest :datatype-) "dji_sdk/MissionHpUpdateYawRateRequest")
(setf (get dji_sdk::MissionHpUpdateYawRateRequest :definition-)
      "float32 yaw_rate
uint8 direction
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::MissionHpUpdateYawRateResponse :md5sum-) "e4b46552667899a74d58ef421a1fe415")
(setf (get dji_sdk::MissionHpUpdateYawRateResponse :datatype-) "dji_sdk/MissionHpUpdateYawRateResponse")
(setf (get dji_sdk::MissionHpUpdateYawRateResponse :definition-)
      "float32 yaw_rate
uint8 direction
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/MissionHpUpdateYawRate "e4b46552667899a74d58ef421a1fe415")


