;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MFIOSetValue)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MFIOSetValue (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MFIOSETVALUE")
  (make-package "DJI_SDK::MFIOSETVALUE"))
(unless (find-package "DJI_SDK::MFIOSETVALUEREQUEST")
  (make-package "DJI_SDK::MFIOSETVALUEREQUEST"))
(unless (find-package "DJI_SDK::MFIOSETVALUERESPONSE")
  (make-package "DJI_SDK::MFIOSETVALUERESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MFIOSetValueRequest
  :super ros::object
  :slots (_channel _init_on_time_us ))

(defmethod dji_sdk::MFIOSetValueRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:init_on_time_us __init_on_time_us) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _init_on_time_us (round __init_on_time_us))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:init_on_time_us
   (&optional __init_on_time_us)
   (if __init_on_time_us (setq _init_on_time_us __init_on_time_us)) _init_on_time_us)
  (:serialization-length
   ()
   (+
    ;; uint8 _channel
    1
    ;; uint32 _init_on_time_us
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint32 _init_on_time_us
       (write-long _init_on_time_us s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _init_on_time_us
     (setq _init_on_time_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MFIOSetValueResponse
  :super ros::object
  :slots ())

(defmethod dji_sdk::MFIOSetValueResponse
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

(defclass dji_sdk::MFIOSetValue
  :super ros::object
  :slots ())

(setf (get dji_sdk::MFIOSetValue :md5sum-) "7a1c84fd096204723ecbb1a57b618e28")
(setf (get dji_sdk::MFIOSetValue :datatype-) "dji_sdk/MFIOSetValue")
(setf (get dji_sdk::MFIOSetValue :request) dji_sdk::MFIOSetValueRequest)
(setf (get dji_sdk::MFIOSetValue :response) dji_sdk::MFIOSetValueResponse)

(defmethod dji_sdk::MFIOSetValueRequest
  (:response () (instance dji_sdk::MFIOSetValueResponse :init)))

(setf (get dji_sdk::MFIOSetValueRequest :md5sum-) "7a1c84fd096204723ecbb1a57b618e28")
(setf (get dji_sdk::MFIOSetValueRequest :datatype-) "dji_sdk/MFIOSetValueRequest")
(setf (get dji_sdk::MFIOSetValueRequest :definition-)
      "uint8 channel
uint32 init_on_time_us
---

")

(setf (get dji_sdk::MFIOSetValueResponse :md5sum-) "7a1c84fd096204723ecbb1a57b618e28")
(setf (get dji_sdk::MFIOSetValueResponse :datatype-) "dji_sdk/MFIOSetValueResponse")
(setf (get dji_sdk::MFIOSetValueResponse :definition-)
      "uint8 channel
uint32 init_on_time_us
---

")



(provide :dji_sdk/MFIOSetValue "7a1c84fd096204723ecbb1a57b618e28")


