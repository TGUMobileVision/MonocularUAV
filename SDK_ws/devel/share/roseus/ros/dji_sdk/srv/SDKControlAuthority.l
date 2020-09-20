;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SDKControlAuthority)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SDKControlAuthority (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SDKCONTROLAUTHORITY")
  (make-package "DJI_SDK::SDKCONTROLAUTHORITY"))
(unless (find-package "DJI_SDK::SDKCONTROLAUTHORITYREQUEST")
  (make-package "DJI_SDK::SDKCONTROLAUTHORITYREQUEST"))
(unless (find-package "DJI_SDK::SDKCONTROLAUTHORITYRESPONSE")
  (make-package "DJI_SDK::SDKCONTROLAUTHORITYRESPONSE"))

(in-package "ROS")





(intern "*RELEASE_CONTROL*" (find-package "DJI_SDK::SDKCONTROLAUTHORITYREQUEST"))
(shadow '*RELEASE_CONTROL* (find-package "DJI_SDK::SDKCONTROLAUTHORITYREQUEST"))
(defconstant dji_sdk::SDKControlAuthorityRequest::*RELEASE_CONTROL* 0)
(intern "*REQUEST_CONTROL*" (find-package "DJI_SDK::SDKCONTROLAUTHORITYREQUEST"))
(shadow '*REQUEST_CONTROL* (find-package "DJI_SDK::SDKCONTROLAUTHORITYREQUEST"))
(defconstant dji_sdk::SDKControlAuthorityRequest::*REQUEST_CONTROL* 1)
(defclass dji_sdk::SDKControlAuthorityRequest
  :super ros::object
  :slots (_control_enable ))

(defmethod dji_sdk::SDKControlAuthorityRequest
  (:init
   (&key
    ((:control_enable __control_enable) 0)
    )
   (send-super :init)
   (setq _control_enable (round __control_enable))
   self)
  (:control_enable
   (&optional __control_enable)
   (if __control_enable (setq _control_enable __control_enable)) _control_enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _control_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control_enable
       (write-byte _control_enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control_enable
     (setq _control_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::SDKControlAuthorityResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::SDKControlAuthorityResponse
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

(defclass dji_sdk::SDKControlAuthority
  :super ros::object
  :slots ())

(setf (get dji_sdk::SDKControlAuthority :md5sum-) "ab9a31a36ad499da6a1bb989580360dd")
(setf (get dji_sdk::SDKControlAuthority :datatype-) "dji_sdk/SDKControlAuthority")
(setf (get dji_sdk::SDKControlAuthority :request) dji_sdk::SDKControlAuthorityRequest)
(setf (get dji_sdk::SDKControlAuthority :response) dji_sdk::SDKControlAuthorityResponse)

(defmethod dji_sdk::SDKControlAuthorityRequest
  (:response () (instance dji_sdk::SDKControlAuthorityResponse :init)))

(setf (get dji_sdk::SDKControlAuthorityRequest :md5sum-) "ab9a31a36ad499da6a1bb989580360dd")
(setf (get dji_sdk::SDKControlAuthorityRequest :datatype-) "dji_sdk/SDKControlAuthorityRequest")
(setf (get dji_sdk::SDKControlAuthorityRequest :definition-)
      "
uint8 RELEASE_CONTROL = 0
uint8 REQUEST_CONTROL = 1


uint8 control_enable
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_sdk::SDKControlAuthorityResponse :md5sum-) "ab9a31a36ad499da6a1bb989580360dd")
(setf (get dji_sdk::SDKControlAuthorityResponse :datatype-) "dji_sdk/SDKControlAuthorityResponse")
(setf (get dji_sdk::SDKControlAuthorityResponse :definition-)
      "
uint8 RELEASE_CONTROL = 0
uint8 REQUEST_CONTROL = 1


uint8 control_enable
---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_sdk/SDKControlAuthority "ab9a31a36ad499da6a1bb989580360dd")


