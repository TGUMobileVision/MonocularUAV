;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::DroneArmControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'DroneArmControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::DRONEARMCONTROL")
  (make-package "DJI_SDK::DRONEARMCONTROL"))
(unless (find-package "DJI_SDK::DRONEARMCONTROLREQUEST")
  (make-package "DJI_SDK::DRONEARMCONTROLREQUEST"))
(unless (find-package "DJI_SDK::DRONEARMCONTROLRESPONSE")
  (make-package "DJI_SDK::DRONEARMCONTROLRESPONSE"))

(in-package "ROS")





(intern "*DISARM_COMMAND*" (find-package "DJI_SDK::DRONEARMCONTROLREQUEST"))
(shadow '*DISARM_COMMAND* (find-package "DJI_SDK::DRONEARMCONTROLREQUEST"))
(defconstant dji_sdk::DroneArmControlRequest::*DISARM_COMMAND* 0)
(intern "*ARM_COMMAND*" (find-package "DJI_SDK::DRONEARMCONTROLREQUEST"))
(shadow '*ARM_COMMAND* (find-package "DJI_SDK::DRONEARMCONTROLREQUEST"))
(defconstant dji_sdk::DroneArmControlRequest::*ARM_COMMAND* 1)
(defclass dji_sdk::DroneArmControlRequest
  :super ros::object
  :slots (_arm ))

(defmethod dji_sdk::DroneArmControlRequest
  (:init
   (&key
    ((:arm __arm) 0)
    )
   (send-super :init)
   (setq _arm (round __arm))
   self)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; uint8 _arm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _arm
       (write-byte _arm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _arm
     (setq _arm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::DroneArmControlResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::DroneArmControlResponse
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

(defclass dji_sdk::DroneArmControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::DroneArmControl :md5sum-) "0a8071a11c3d6b34ba24869e069f733c")
(setf (get dji_sdk::DroneArmControl :datatype-) "dji_sdk/DroneArmControl")
(setf (get dji_sdk::DroneArmControl :request) dji_sdk::DroneArmControlRequest)
(setf (get dji_sdk::DroneArmControl :response) dji_sdk::DroneArmControlResponse)

(defmethod dji_sdk::DroneArmControlRequest
  (:response () (instance dji_sdk::DroneArmControlResponse :init)))

(setf (get dji_sdk::DroneArmControlRequest :md5sum-) "0a8071a11c3d6b34ba24869e069f733c")
(setf (get dji_sdk::DroneArmControlRequest :datatype-) "dji_sdk/DroneArmControlRequest")
(setf (get dji_sdk::DroneArmControlRequest :definition-)
      "
uint8 DISARM_COMMAND = 0
uint8 ARM_COMMAND    = 1


uint8 arm
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::DroneArmControlResponse :md5sum-) "0a8071a11c3d6b34ba24869e069f733c")
(setf (get dji_sdk::DroneArmControlResponse :datatype-) "dji_sdk/DroneArmControlResponse")
(setf (get dji_sdk::DroneArmControlResponse :definition-)
      "
uint8 DISARM_COMMAND = 0
uint8 ARM_COMMAND    = 1


uint8 arm
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/DroneArmControl "0a8071a11c3d6b34ba24869e069f733c")


