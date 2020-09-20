;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::DroneTaskControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'DroneTaskControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::DRONETASKCONTROL")
  (make-package "DJI_SDK::DRONETASKCONTROL"))
(unless (find-package "DJI_SDK::DRONETASKCONTROLREQUEST")
  (make-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(unless (find-package "DJI_SDK::DRONETASKCONTROLRESPONSE")
  (make-package "DJI_SDK::DRONETASKCONTROLRESPONSE"))

(in-package "ROS")





(intern "*TASK_GOHOME*" (find-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(shadow '*TASK_GOHOME* (find-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(defconstant dji_sdk::DroneTaskControlRequest::*TASK_GOHOME* 1)
(intern "*TASK_TAKEOFF*" (find-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(shadow '*TASK_TAKEOFF* (find-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(defconstant dji_sdk::DroneTaskControlRequest::*TASK_TAKEOFF* 4)
(intern "*TASK_LAND*" (find-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(shadow '*TASK_LAND* (find-package "DJI_SDK::DRONETASKCONTROLREQUEST"))
(defconstant dji_sdk::DroneTaskControlRequest::*TASK_LAND* 6)
(defclass dji_sdk::DroneTaskControlRequest
  :super ros::object
  :slots (_task ))

(defmethod dji_sdk::DroneTaskControlRequest
  (:init
   (&key
    ((:task __task) 0)
    )
   (send-super :init)
   (setq _task (round __task))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:serialization-length
   ()
   (+
    ;; uint8 _task
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _task
       (write-byte _task s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _task
     (setq _task (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::DroneTaskControlResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::DroneTaskControlResponse
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

(defclass dji_sdk::DroneTaskControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::DroneTaskControl :md5sum-) "ab91c4042653ca6868c5907bf22e4741")
(setf (get dji_sdk::DroneTaskControl :datatype-) "dji_sdk/DroneTaskControl")
(setf (get dji_sdk::DroneTaskControl :request) dji_sdk::DroneTaskControlRequest)
(setf (get dji_sdk::DroneTaskControl :response) dji_sdk::DroneTaskControlResponse)

(defmethod dji_sdk::DroneTaskControlRequest
  (:response () (instance dji_sdk::DroneTaskControlResponse :init)))

(setf (get dji_sdk::DroneTaskControlRequest :md5sum-) "ab91c4042653ca6868c5907bf22e4741")
(setf (get dji_sdk::DroneTaskControlRequest :datatype-) "dji_sdk/DroneTaskControlRequest")
(setf (get dji_sdk::DroneTaskControlRequest :definition-)
      "
uint8 TASK_GOHOME = 1
uint8 TASK_TAKEOFF = 4
uint8 TASK_LAND = 6


uint8 task
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::DroneTaskControlResponse :md5sum-) "ab91c4042653ca6868c5907bf22e4741")
(setf (get dji_sdk::DroneTaskControlResponse :datatype-) "dji_sdk/DroneTaskControlResponse")
(setf (get dji_sdk::DroneTaskControlResponse :definition-)
      "
uint8 TASK_GOHOME = 1
uint8 TASK_TAKEOFF = 4
uint8 TASK_LAND = 6


uint8 task
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/DroneTaskControl "ab91c4042653ca6868c5907bf22e4741")


