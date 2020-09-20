;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpUpdateRadius)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpUpdateRadius (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPUPDATERADIUS")
  (make-package "DJI_SDK::MISSIONHPUPDATERADIUS"))
(unless (find-package "DJI_SDK::MISSIONHPUPDATERADIUSREQUEST")
  (make-package "DJI_SDK::MISSIONHPUPDATERADIUSREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPUPDATERADIUSRESPONSE")
  (make-package "DJI_SDK::MISSIONHPUPDATERADIUSRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpUpdateRadiusRequest
  :super ros::object
  :slots (_radius ))

(defmethod dji_sdk::MissionHpUpdateRadiusRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionHpUpdateRadiusResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionHpUpdateRadiusResponse
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

(defclass dji_sdk::MissionHpUpdateRadius
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpUpdateRadius :md5sum-) "a73ee6c10e003f74ced091fcaa0531af")
(setf (get dji_sdk::MissionHpUpdateRadius :datatype-) "dji_sdk/MissionHpUpdateRadius")
(setf (get dji_sdk::MissionHpUpdateRadius :request) dji_sdk::MissionHpUpdateRadiusRequest)
(setf (get dji_sdk::MissionHpUpdateRadius :response) dji_sdk::MissionHpUpdateRadiusResponse)

(defmethod dji_sdk::MissionHpUpdateRadiusRequest
  (:response () (instance dji_sdk::MissionHpUpdateRadiusResponse :init)))

(setf (get dji_sdk::MissionHpUpdateRadiusRequest :md5sum-) "a73ee6c10e003f74ced091fcaa0531af")
(setf (get dji_sdk::MissionHpUpdateRadiusRequest :datatype-) "dji_sdk/MissionHpUpdateRadiusRequest")
(setf (get dji_sdk::MissionHpUpdateRadiusRequest :definition-)
      "float32 radius
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::MissionHpUpdateRadiusResponse :md5sum-) "a73ee6c10e003f74ced091fcaa0531af")
(setf (get dji_sdk::MissionHpUpdateRadiusResponse :datatype-) "dji_sdk/MissionHpUpdateRadiusResponse")
(setf (get dji_sdk::MissionHpUpdateRadiusResponse :definition-)
      "float32 radius
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/MissionHpUpdateRadius "a73ee6c10e003f74ced091fcaa0531af")


