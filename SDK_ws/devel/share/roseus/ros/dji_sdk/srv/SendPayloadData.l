;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SendPayloadData)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SendPayloadData (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SENDPAYLOADDATA")
  (make-package "DJI_SDK::SENDPAYLOADDATA"))
(unless (find-package "DJI_SDK::SENDPAYLOADDATAREQUEST")
  (make-package "DJI_SDK::SENDPAYLOADDATAREQUEST"))
(unless (find-package "DJI_SDK::SENDPAYLOADDATARESPONSE")
  (make-package "DJI_SDK::SENDPAYLOADDATARESPONSE"))

(in-package "ROS")





(defclass dji_sdk::SendPayloadDataRequest
  :super ros::object
  :slots (_data ))

(defmethod dji_sdk::SendPayloadDataRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass dji_sdk::SendPayloadDataResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::SendPayloadDataResponse
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

(defclass dji_sdk::SendPayloadData
  :super ros::object
  :slots ())

(setf (get dji_sdk::SendPayloadData :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_sdk::SendPayloadData :datatype-) "dji_sdk/SendPayloadData")
(setf (get dji_sdk::SendPayloadData :request) dji_sdk::SendPayloadDataRequest)
(setf (get dji_sdk::SendPayloadData :response) dji_sdk::SendPayloadDataResponse)

(defmethod dji_sdk::SendPayloadDataRequest
  (:response () (instance dji_sdk::SendPayloadDataResponse :init)))

(setf (get dji_sdk::SendPayloadDataRequest :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_sdk::SendPayloadDataRequest :datatype-) "dji_sdk/SendPayloadDataRequest")
(setf (get dji_sdk::SendPayloadDataRequest :definition-)
      "uint8[] data
---
bool result

")

(setf (get dji_sdk::SendPayloadDataResponse :md5sum-) "1c25dff3462ed6a8f6df1c148c7b6a1e")
(setf (get dji_sdk::SendPayloadDataResponse :datatype-) "dji_sdk/SendPayloadDataResponse")
(setf (get dji_sdk::SendPayloadDataResponse :definition-)
      "uint8[] data
---
bool result

")



(provide :dji_sdk/SendPayloadData "1c25dff3462ed6a8f6df1c148c7b6a1e")


