;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::QueryDroneVersion)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'QueryDroneVersion (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::QUERYDRONEVERSION")
  (make-package "DJI_SDK::QUERYDRONEVERSION"))
(unless (find-package "DJI_SDK::QUERYDRONEVERSIONREQUEST")
  (make-package "DJI_SDK::QUERYDRONEVERSIONREQUEST"))
(unless (find-package "DJI_SDK::QUERYDRONEVERSIONRESPONSE")
  (make-package "DJI_SDK::QUERYDRONEVERSIONRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::QueryDroneVersionRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::QueryDroneVersionRequest
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

(defclass dji_sdk::QueryDroneVersionResponse
  :super ros::object
  :slots (_version _hardware ))

(defmethod dji_sdk::QueryDroneVersionResponse
  (:init
   (&key
    ((:version __version) 0)
    ((:hardware __hardware) "")
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _hardware (string __hardware))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:hardware
   (&optional __hardware)
   (if __hardware (setq _hardware __hardware)) _hardware)
  (:serialization-length
   ()
   (+
    ;; uint32 _version
    4
    ;; string _hardware
    4 (length _hardware)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _version
       (write-long _version s)
     ;; string _hardware
       (write-long (length _hardware) s) (princ _hardware s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _version
     (setq _version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _hardware
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dji_sdk::QueryDroneVersion
  :super ros::object
  :slots ())

(setf (get dji_sdk::QueryDroneVersion :md5sum-) "89b6e8d274e31334cc3a372757607be2")
(setf (get dji_sdk::QueryDroneVersion :datatype-) "dji_sdk/QueryDroneVersion")
(setf (get dji_sdk::QueryDroneVersion :request) dji_sdk::QueryDroneVersionRequest)
(setf (get dji_sdk::QueryDroneVersion :response) dji_sdk::QueryDroneVersionResponse)

(defmethod dji_sdk::QueryDroneVersionRequest
  (:response () (instance dji_sdk::QueryDroneVersionResponse :init)))

(setf (get dji_sdk::QueryDroneVersionRequest :md5sum-) "89b6e8d274e31334cc3a372757607be2")
(setf (get dji_sdk::QueryDroneVersionRequest :datatype-) "dji_sdk/QueryDroneVersionRequest")
(setf (get dji_sdk::QueryDroneVersionRequest :definition-)
      "---
uint32 version
string hardware
")

(setf (get dji_sdk::QueryDroneVersionResponse :md5sum-) "89b6e8d274e31334cc3a372757607be2")
(setf (get dji_sdk::QueryDroneVersionResponse :datatype-) "dji_sdk/QueryDroneVersionResponse")
(setf (get dji_sdk::QueryDroneVersionResponse :definition-)
      "---
uint32 version
string hardware
")



(provide :dji_sdk/QueryDroneVersion "89b6e8d274e31334cc3a372757607be2")


