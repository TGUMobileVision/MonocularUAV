;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MobileData)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MobileData (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MOBILEDATA")
  (make-package "DJI_SDK::MOBILEDATA"))

(in-package "ROS")
;;//! \htmlinclude MobileData.msg.html


(defclass dji_sdk::MobileData
  :super ros::object
  :slots (_data ))

(defmethod dji_sdk::MobileData
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

(setf (get dji_sdk::MobileData :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get dji_sdk::MobileData :datatype-) "dji_sdk/MobileData")
(setf (get dji_sdk::MobileData :definition-)
      "uint8[] data
")



(provide :dji_sdk/MobileData "f43a8e1b362b75baa741461b46adc7e0")


