;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Activation)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Activation (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::ACTIVATION")
  (make-package "DJI_SDK::ACTIVATION"))
(unless (find-package "DJI_SDK::ACTIVATIONREQUEST")
  (make-package "DJI_SDK::ACTIVATIONREQUEST"))
(unless (find-package "DJI_SDK::ACTIVATIONRESPONSE")
  (make-package "DJI_SDK::ACTIVATIONRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::ActivationRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::ActivationRequest
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

(defclass dji_sdk::ActivationResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_sdk::ActivationResponse
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

(defclass dji_sdk::Activation
  :super ros::object
  :slots ())

(setf (get dji_sdk::Activation :md5sum-) "f03b0bc279b265c40946c1011df83013")
(setf (get dji_sdk::Activation :datatype-) "dji_sdk/Activation")
(setf (get dji_sdk::Activation :request) dji_sdk::ActivationRequest)
(setf (get dji_sdk::Activation :response) dji_sdk::ActivationResponse)

(defmethod dji_sdk::ActivationRequest
  (:response () (instance dji_sdk::ActivationResponse :init)))

(setf (get dji_sdk::ActivationRequest :md5sum-) "f03b0bc279b265c40946c1011df83013")
(setf (get dji_sdk::ActivationRequest :datatype-) "dji_sdk/ActivationRequest")
(setf (get dji_sdk::ActivationRequest :definition-)
      "---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")

(setf (get dji_sdk::ActivationResponse :md5sum-) "f03b0bc279b265c40946c1011df83013")
(setf (get dji_sdk::ActivationResponse :datatype-) "dji_sdk/ActivationResponse")
(setf (get dji_sdk::ActivationResponse :definition-)
      "---
bool result

uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")



(provide :dji_sdk/Activation "f03b0bc279b265c40946c1011df83013")


