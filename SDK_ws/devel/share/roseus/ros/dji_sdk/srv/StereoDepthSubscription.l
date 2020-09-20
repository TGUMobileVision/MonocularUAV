;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::StereoDepthSubscription)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'StereoDepthSubscription (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::STEREODEPTHSUBSCRIPTION")
  (make-package "DJI_SDK::STEREODEPTHSUBSCRIPTION"))
(unless (find-package "DJI_SDK::STEREODEPTHSUBSCRIPTIONREQUEST")
  (make-package "DJI_SDK::STEREODEPTHSUBSCRIPTIONREQUEST"))
(unless (find-package "DJI_SDK::STEREODEPTHSUBSCRIPTIONRESPONSE")
  (make-package "DJI_SDK::STEREODEPTHSUBSCRIPTIONRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::StereoDepthSubscriptionRequest
  :super ros::object
  :slots (_front_depth_240p _unsubscribe_240p ))

(defmethod dji_sdk::StereoDepthSubscriptionRequest
  (:init
   (&key
    ((:front_depth_240p __front_depth_240p) 0)
    ((:unsubscribe_240p __unsubscribe_240p) 0)
    )
   (send-super :init)
   (setq _front_depth_240p (round __front_depth_240p))
   (setq _unsubscribe_240p (round __unsubscribe_240p))
   self)
  (:front_depth_240p
   (&optional __front_depth_240p)
   (if __front_depth_240p (setq _front_depth_240p __front_depth_240p)) _front_depth_240p)
  (:unsubscribe_240p
   (&optional __unsubscribe_240p)
   (if __unsubscribe_240p (setq _unsubscribe_240p __unsubscribe_240p)) _unsubscribe_240p)
  (:serialization-length
   ()
   (+
    ;; uint8 _front_depth_240p
    1
    ;; uint8 _unsubscribe_240p
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _front_depth_240p
       (write-byte _front_depth_240p s)
     ;; uint8 _unsubscribe_240p
       (write-byte _unsubscribe_240p s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _front_depth_240p
     (setq _front_depth_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unsubscribe_240p
     (setq _unsubscribe_240p (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::StereoDepthSubscriptionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::StereoDepthSubscriptionResponse
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

(defclass dji_sdk::StereoDepthSubscription
  :super ros::object
  :slots ())

(setf (get dji_sdk::StereoDepthSubscription :md5sum-) "6da41f0fc9c34988dbd56e6a11bddfdf")
(setf (get dji_sdk::StereoDepthSubscription :datatype-) "dji_sdk/StereoDepthSubscription")
(setf (get dji_sdk::StereoDepthSubscription :request) dji_sdk::StereoDepthSubscriptionRequest)
(setf (get dji_sdk::StereoDepthSubscription :response) dji_sdk::StereoDepthSubscriptionResponse)

(defmethod dji_sdk::StereoDepthSubscriptionRequest
  (:response () (instance dji_sdk::StereoDepthSubscriptionResponse :init)))

(setf (get dji_sdk::StereoDepthSubscriptionRequest :md5sum-) "6da41f0fc9c34988dbd56e6a11bddfdf")
(setf (get dji_sdk::StereoDepthSubscriptionRequest :datatype-) "dji_sdk/StereoDepthSubscriptionRequest")
(setf (get dji_sdk::StereoDepthSubscriptionRequest :definition-)
      "
uint8 front_depth_240p



uint8 unsubscribe_240p

---
bool result
")

(setf (get dji_sdk::StereoDepthSubscriptionResponse :md5sum-) "6da41f0fc9c34988dbd56e6a11bddfdf")
(setf (get dji_sdk::StereoDepthSubscriptionResponse :datatype-) "dji_sdk/StereoDepthSubscriptionResponse")
(setf (get dji_sdk::StereoDepthSubscriptionResponse :definition-)
      "
uint8 front_depth_240p



uint8 unsubscribe_240p

---
bool result
")



(provide :dji_sdk/StereoDepthSubscription "6da41f0fc9c34988dbd56e6a11bddfdf")


