;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SetLocalPosRef)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SetLocalPosRef (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SETLOCALPOSREF")
  (make-package "DJI_SDK::SETLOCALPOSREF"))
(unless (find-package "DJI_SDK::SETLOCALPOSREFREQUEST")
  (make-package "DJI_SDK::SETLOCALPOSREFREQUEST"))
(unless (find-package "DJI_SDK::SETLOCALPOSREFRESPONSE")
  (make-package "DJI_SDK::SETLOCALPOSREFRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::SetLocalPosRefRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::SetLocalPosRefRequest
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

(defclass dji_sdk::SetLocalPosRefResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::SetLocalPosRefResponse
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

(defclass dji_sdk::SetLocalPosRef
  :super ros::object
  :slots ())

(setf (get dji_sdk::SetLocalPosRef :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::SetLocalPosRef :datatype-) "dji_sdk/SetLocalPosRef")
(setf (get dji_sdk::SetLocalPosRef :request) dji_sdk::SetLocalPosRefRequest)
(setf (get dji_sdk::SetLocalPosRef :response) dji_sdk::SetLocalPosRefResponse)

(defmethod dji_sdk::SetLocalPosRefRequest
  (:response () (instance dji_sdk::SetLocalPosRefResponse :init)))

(setf (get dji_sdk::SetLocalPosRefRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::SetLocalPosRefRequest :datatype-) "dji_sdk/SetLocalPosRefRequest")
(setf (get dji_sdk::SetLocalPosRefRequest :definition-)
      "



---
bool result

")

(setf (get dji_sdk::SetLocalPosRefResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::SetLocalPosRefResponse :datatype-) "dji_sdk/SetLocalPosRefResponse")
(setf (get dji_sdk::SetLocalPosRefResponse :definition-)
      "



---
bool result

")



(provide :dji_sdk/SetLocalPosRef "eb13ac1f1354ccecb7941ee8fa2192e8")


