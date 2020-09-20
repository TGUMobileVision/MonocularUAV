;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MFIOConfig)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MFIOConfig (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MFIOCONFIG")
  (make-package "DJI_SDK::MFIOCONFIG"))
(unless (find-package "DJI_SDK::MFIOCONFIGREQUEST")
  (make-package "DJI_SDK::MFIOCONFIGREQUEST"))
(unless (find-package "DJI_SDK::MFIOCONFIGRESPONSE")
  (make-package "DJI_SDK::MFIOCONFIGRESPONSE"))

(in-package "ROS")





(intern "*MODE_PWM_OUT*" (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(shadow '*MODE_PWM_OUT* (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(defconstant dji_sdk::MFIOConfigRequest::*MODE_PWM_OUT* 0)
(intern "*MODE_GPIO_OUT*" (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(shadow '*MODE_GPIO_OUT* (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(defconstant dji_sdk::MFIOConfigRequest::*MODE_GPIO_OUT* 2)
(intern "*MODE_GPIO_IN*" (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(shadow '*MODE_GPIO_IN* (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(defconstant dji_sdk::MFIOConfigRequest::*MODE_GPIO_IN* 3)
(intern "*MODE_ADC*" (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(shadow '*MODE_ADC* (find-package "DJI_SDK::MFIOCONFIGREQUEST"))
(defconstant dji_sdk::MFIOConfigRequest::*MODE_ADC* 4)
(defclass dji_sdk::MFIOConfigRequest
  :super ros::object
  :slots (_mode _channel _init_on_time_us _pwm_freq ))

(defmethod dji_sdk::MFIOConfigRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:channel __channel) 0)
    ((:init_on_time_us __init_on_time_us) 0)
    ((:pwm_freq __pwm_freq) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _channel (round __channel))
   (setq _init_on_time_us (round __init_on_time_us))
   (setq _pwm_freq (round __pwm_freq))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:init_on_time_us
   (&optional __init_on_time_us)
   (if __init_on_time_us (setq _init_on_time_us __init_on_time_us)) _init_on_time_us)
  (:pwm_freq
   (&optional __pwm_freq)
   (if __pwm_freq (setq _pwm_freq __pwm_freq)) _pwm_freq)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _channel
    1
    ;; uint32 _init_on_time_us
    4
    ;; uint16 _pwm_freq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint32 _init_on_time_us
       (write-long _init_on_time_us s)
     ;; uint16 _pwm_freq
       (write-word _pwm_freq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _init_on_time_us
     (setq _init_on_time_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _pwm_freq
     (setq _pwm_freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_sdk::MFIOConfigResponse
  :super ros::object
  :slots ())

(defmethod dji_sdk::MFIOConfigResponse
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

(defclass dji_sdk::MFIOConfig
  :super ros::object
  :slots ())

(setf (get dji_sdk::MFIOConfig :md5sum-) "ad06bda475c7f13453680ee626114de0")
(setf (get dji_sdk::MFIOConfig :datatype-) "dji_sdk/MFIOConfig")
(setf (get dji_sdk::MFIOConfig :request) dji_sdk::MFIOConfigRequest)
(setf (get dji_sdk::MFIOConfig :response) dji_sdk::MFIOConfigResponse)

(defmethod dji_sdk::MFIOConfigRequest
  (:response () (instance dji_sdk::MFIOConfigResponse :init)))

(setf (get dji_sdk::MFIOConfigRequest :md5sum-) "ad06bda475c7f13453680ee626114de0")
(setf (get dji_sdk::MFIOConfigRequest :datatype-) "dji_sdk/MFIOConfigRequest")
(setf (get dji_sdk::MFIOConfigRequest :definition-)
      "
uint8 MODE_PWM_OUT  = 0

uint8 MODE_GPIO_OUT = 2
uint8 MODE_GPIO_IN  = 3
uint8 MODE_ADC      = 4


uint8 mode
uint8 channel
uint32 init_on_time_us
uint16 pwm_freq
---

")

(setf (get dji_sdk::MFIOConfigResponse :md5sum-) "ad06bda475c7f13453680ee626114de0")
(setf (get dji_sdk::MFIOConfigResponse :datatype-) "dji_sdk/MFIOConfigResponse")
(setf (get dji_sdk::MFIOConfigResponse :definition-)
      "
uint8 MODE_PWM_OUT  = 0

uint8 MODE_GPIO_OUT = 2
uint8 MODE_GPIO_IN  = 3
uint8 MODE_ADC      = 4


uint8 mode
uint8 channel
uint32 init_on_time_us
uint16 pwm_freq
---

")



(provide :dji_sdk/MFIOConfig "ad06bda475c7f13453680ee626114de0")


