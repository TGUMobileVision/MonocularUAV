;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpAction)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpAction (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPACTION")
  (make-package "DJI_SDK::MISSIONWPACTION"))
(unless (find-package "DJI_SDK::MISSIONWPACTIONREQUEST")
  (make-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPACTIONRESPONSE")
  (make-package "DJI_SDK::MISSIONWPACTIONRESPONSE"))

(in-package "ROS")





(intern "*ACTION_START*" (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(shadow '*ACTION_START* (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(defconstant dji_sdk::MissionWpActionRequest::*ACTION_START* 0)
(intern "*ACTION_STOP*" (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(shadow '*ACTION_STOP* (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(defconstant dji_sdk::MissionWpActionRequest::*ACTION_STOP* 1)
(intern "*ACTION_PAUSE*" (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(shadow '*ACTION_PAUSE* (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(defconstant dji_sdk::MissionWpActionRequest::*ACTION_PAUSE* 2)
(intern "*ACTION_RESUME*" (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(shadow '*ACTION_RESUME* (find-package "DJI_SDK::MISSIONWPACTIONREQUEST"))
(defconstant dji_sdk::MissionWpActionRequest::*ACTION_RESUME* 3)
(defclass dji_sdk::MissionWpActionRequest
  :super ros::object
  :slots (_action ))

(defmethod dji_sdk::MissionWpActionRequest
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpActionResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::MissionWpActionResponse
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

(defclass dji_sdk::MissionWpAction
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpAction :md5sum-) "067ec5f79e77e0b4c0121e09e733b483")
(setf (get dji_sdk::MissionWpAction :datatype-) "dji_sdk/MissionWpAction")
(setf (get dji_sdk::MissionWpAction :request) dji_sdk::MissionWpActionRequest)
(setf (get dji_sdk::MissionWpAction :response) dji_sdk::MissionWpActionResponse)

(defmethod dji_sdk::MissionWpActionRequest
  (:response () (instance dji_sdk::MissionWpActionResponse :init)))

(setf (get dji_sdk::MissionWpActionRequest :md5sum-) "067ec5f79e77e0b4c0121e09e733b483")
(setf (get dji_sdk::MissionWpActionRequest :datatype-) "dji_sdk/MissionWpActionRequest")
(setf (get dji_sdk::MissionWpActionRequest :definition-)
      "
uint8 ACTION_START  = 0
uint8 ACTION_STOP   = 1
uint8 ACTION_PAUSE  = 2
uint8 ACTION_RESUME = 3


uint8 action
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::MissionWpActionResponse :md5sum-) "067ec5f79e77e0b4c0121e09e733b483")
(setf (get dji_sdk::MissionWpActionResponse :datatype-) "dji_sdk/MissionWpActionResponse")
(setf (get dji_sdk::MissionWpActionResponse :definition-)
      "
uint8 ACTION_START  = 0
uint8 ACTION_STOP   = 1
uint8 ACTION_PAUSE  = 2
uint8 ACTION_RESUME = 3


uint8 action
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/MissionWpAction "067ec5f79e77e0b4c0121e09e733b483")


