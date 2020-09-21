;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SetHardSync)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SetHardSync (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SETHARDSYNC")
  (make-package "DJI_SDK::SETHARDSYNC"))
(unless (find-package "DJI_SDK::SETHARDSYNCREQUEST")
  (make-package "DJI_SDK::SETHARDSYNCREQUEST"))
(unless (find-package "DJI_SDK::SETHARDSYNCRESPONSE")
  (make-package "DJI_SDK::SETHARDSYNCRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::SetHardSyncRequest
  :super ros::object
  :slots (_frequency _tag ))

(defmethod dji_sdk::SetHardSyncRequest
  (:init
   (&key
    ((:frequency __frequency) 0)
    ((:tag __tag) 0)
    )
   (send-super :init)
   (setq _frequency (round __frequency))
   (setq _tag (round __tag))
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:serialization-length
   ()
   (+
    ;; uint32 _frequency
    4
    ;; uint16 _tag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frequency
       (write-long _frequency s)
     ;; uint16 _tag
       (write-word _tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frequency
     (setq _frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _tag
     (setq _tag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_sdk::SetHardSyncResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::SetHardSyncResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::SetHardSync
  :super ros::object
  :slots ())

(setf (get dji_sdk::SetHardSync :md5sum-) "11e826f14456b3511264f6a734868e08")
(setf (get dji_sdk::SetHardSync :datatype-) "dji_sdk/SetHardSync")
(setf (get dji_sdk::SetHardSync :request) dji_sdk::SetHardSyncRequest)
(setf (get dji_sdk::SetHardSync :response) dji_sdk::SetHardSyncResponse)

(defmethod dji_sdk::SetHardSyncRequest
  (:response () (instance dji_sdk::SetHardSyncResponse :init)))

(setf (get dji_sdk::SetHardSyncRequest :md5sum-) "11e826f14456b3511264f6a734868e08")
(setf (get dji_sdk::SetHardSyncRequest :datatype-) "dji_sdk/SetHardSyncRequest")
(setf (get dji_sdk::SetHardSyncRequest :definition-)
      "uint32 frequency
uint16 tag
---
uint8 result

")

(setf (get dji_sdk::SetHardSyncResponse :md5sum-) "11e826f14456b3511264f6a734868e08")
(setf (get dji_sdk::SetHardSyncResponse :datatype-) "dji_sdk/SetHardSyncResponse")
(setf (get dji_sdk::SetHardSyncResponse :definition-)
      "uint32 frequency
uint16 tag
---
uint8 result

")



(provide :dji_sdk/SetHardSync "11e826f14456b3511264f6a734868e08")


