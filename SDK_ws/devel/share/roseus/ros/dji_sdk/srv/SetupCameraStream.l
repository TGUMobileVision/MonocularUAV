;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SetupCameraStream)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SetupCameraStream (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SETUPCAMERASTREAM")
  (make-package "DJI_SDK::SETUPCAMERASTREAM"))
(unless (find-package "DJI_SDK::SETUPCAMERASTREAMREQUEST")
  (make-package "DJI_SDK::SETUPCAMERASTREAMREQUEST"))
(unless (find-package "DJI_SDK::SETUPCAMERASTREAMRESPONSE")
  (make-package "DJI_SDK::SETUPCAMERASTREAMRESPONSE"))

(in-package "ROS")





(intern "*FPV_CAM*" (find-package "DJI_SDK::SETUPCAMERASTREAMREQUEST"))
(shadow '*FPV_CAM* (find-package "DJI_SDK::SETUPCAMERASTREAMREQUEST"))
(defconstant dji_sdk::SetupCameraStreamRequest::*FPV_CAM* 0)
(intern "*MAIN_CAM*" (find-package "DJI_SDK::SETUPCAMERASTREAMREQUEST"))
(shadow '*MAIN_CAM* (find-package "DJI_SDK::SETUPCAMERASTREAMREQUEST"))
(defconstant dji_sdk::SetupCameraStreamRequest::*MAIN_CAM* 1)
(defclass dji_sdk::SetupCameraStreamRequest
  :super ros::object
  :slots (_cameraType _start ))

(defmethod dji_sdk::SetupCameraStreamRequest
  (:init
   (&key
    ((:cameraType __cameraType) 0)
    ((:start __start) 0)
    )
   (send-super :init)
   (setq _cameraType (round __cameraType))
   (setq _start (round __start))
   self)
  (:cameraType
   (&optional __cameraType)
   (if __cameraType (setq _cameraType __cameraType)) _cameraType)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; uint8 _cameraType
    1
    ;; uint8 _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cameraType
       (write-byte _cameraType s)
     ;; uint8 _start
       (write-byte _start s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cameraType
     (setq _cameraType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start
     (setq _start (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::SetupCameraStreamResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::SetupCameraStreamResponse
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

(defclass dji_sdk::SetupCameraStream
  :super ros::object
  :slots ())

(setf (get dji_sdk::SetupCameraStream :md5sum-) "e0732f307563f64841a2e5c6880f32d3")
(setf (get dji_sdk::SetupCameraStream :datatype-) "dji_sdk/SetupCameraStream")
(setf (get dji_sdk::SetupCameraStream :request) dji_sdk::SetupCameraStreamRequest)
(setf (get dji_sdk::SetupCameraStream :response) dji_sdk::SetupCameraStreamResponse)

(defmethod dji_sdk::SetupCameraStreamRequest
  (:response () (instance dji_sdk::SetupCameraStreamResponse :init)))

(setf (get dji_sdk::SetupCameraStreamRequest :md5sum-) "e0732f307563f64841a2e5c6880f32d3")
(setf (get dji_sdk::SetupCameraStreamRequest :datatype-) "dji_sdk/SetupCameraStreamRequest")
(setf (get dji_sdk::SetupCameraStreamRequest :definition-)
      "
uint8 FPV_CAM  = 0
uint8 MAIN_CAM = 1


uint8 cameraType


uint8 start

---
bool result
")

(setf (get dji_sdk::SetupCameraStreamResponse :md5sum-) "e0732f307563f64841a2e5c6880f32d3")
(setf (get dji_sdk::SetupCameraStreamResponse :datatype-) "dji_sdk/SetupCameraStreamResponse")
(setf (get dji_sdk::SetupCameraStreamResponse :definition-)
      "
uint8 FPV_CAM  = 0
uint8 MAIN_CAM = 1


uint8 cameraType


uint8 start

---
bool result
")



(provide :dji_sdk/SetupCameraStream "e0732f307563f64841a2e5c6880f32d3")


