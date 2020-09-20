;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::CameraAction)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'CameraAction (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::CAMERAACTION")
  (make-package "DJI_SDK::CAMERAACTION"))
(unless (find-package "DJI_SDK::CAMERAACTIONREQUEST")
  (make-package "DJI_SDK::CAMERAACTIONREQUEST"))
(unless (find-package "DJI_SDK::CAMERAACTIONRESPONSE")
  (make-package "DJI_SDK::CAMERAACTIONRESPONSE"))

(in-package "ROS")





(intern "*CAMERA_ACTION_TAKE_PICTURE*" (find-package "DJI_SDK::CAMERAACTIONREQUEST"))
(shadow '*CAMERA_ACTION_TAKE_PICTURE* (find-package "DJI_SDK::CAMERAACTIONREQUEST"))
(defconstant dji_sdk::CameraActionRequest::*CAMERA_ACTION_TAKE_PICTURE* 0)
(intern "*CAMERA_ACTION_START_RECORD*" (find-package "DJI_SDK::CAMERAACTIONREQUEST"))
(shadow '*CAMERA_ACTION_START_RECORD* (find-package "DJI_SDK::CAMERAACTIONREQUEST"))
(defconstant dji_sdk::CameraActionRequest::*CAMERA_ACTION_START_RECORD* 1)
(intern "*CAMERA_ACTION_STOP_RECORD*" (find-package "DJI_SDK::CAMERAACTIONREQUEST"))
(shadow '*CAMERA_ACTION_STOP_RECORD* (find-package "DJI_SDK::CAMERAACTIONREQUEST"))
(defconstant dji_sdk::CameraActionRequest::*CAMERA_ACTION_STOP_RECORD* 2)
(defclass dji_sdk::CameraActionRequest
  :super ros::object
  :slots (_camera_action ))

(defmethod dji_sdk::CameraActionRequest
  (:init
   (&key
    ((:camera_action __camera_action) 0)
    )
   (send-super :init)
   (setq _camera_action (round __camera_action))
   self)
  (:camera_action
   (&optional __camera_action)
   (if __camera_action (setq _camera_action __camera_action)) _camera_action)
  (:serialization-length
   ()
   (+
    ;; uint8 _camera_action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _camera_action
       (write-byte _camera_action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _camera_action
     (setq _camera_action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::CameraActionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::CameraActionResponse
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

(defclass dji_sdk::CameraAction
  :super ros::object
  :slots ())

(setf (get dji_sdk::CameraAction :md5sum-) "cffa80c600cf5ffacb2c7279944f208e")
(setf (get dji_sdk::CameraAction :datatype-) "dji_sdk/CameraAction")
(setf (get dji_sdk::CameraAction :request) dji_sdk::CameraActionRequest)
(setf (get dji_sdk::CameraAction :response) dji_sdk::CameraActionResponse)

(defmethod dji_sdk::CameraActionRequest
  (:response () (instance dji_sdk::CameraActionResponse :init)))

(setf (get dji_sdk::CameraActionRequest :md5sum-) "cffa80c600cf5ffacb2c7279944f208e")
(setf (get dji_sdk::CameraActionRequest :datatype-) "dji_sdk/CameraActionRequest")
(setf (get dji_sdk::CameraActionRequest :definition-)
      "
uint8 CAMERA_ACTION_TAKE_PICTURE = 0
uint8 CAMERA_ACTION_START_RECORD = 1
uint8 CAMERA_ACTION_STOP_RECORD  = 2


uint8 camera_action
---
bool result

")

(setf (get dji_sdk::CameraActionResponse :md5sum-) "cffa80c600cf5ffacb2c7279944f208e")
(setf (get dji_sdk::CameraActionResponse :datatype-) "dji_sdk/CameraActionResponse")
(setf (get dji_sdk::CameraActionResponse :definition-)
      "
uint8 CAMERA_ACTION_TAKE_PICTURE = 0
uint8 CAMERA_ACTION_START_RECORD = 1
uint8 CAMERA_ACTION_STOP_RECORD  = 2


uint8 camera_action
---
bool result

")



(provide :dji_sdk/CameraAction "cffa80c600cf5ffacb2c7279944f208e")


