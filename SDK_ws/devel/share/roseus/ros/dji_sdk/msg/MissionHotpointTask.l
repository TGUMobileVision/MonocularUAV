;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHotpointTask)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHotpointTask (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHOTPOINTTASK")
  (make-package "DJI_SDK::MISSIONHOTPOINTTASK"))

(in-package "ROS")
;;//! \htmlinclude MissionHotpointTask.msg.html


(defclass dji_sdk::MissionHotpointTask
  :super ros::object
  :slots (_latitude _longitude _altitude _radius _angular_speed _is_clockwise _start_point _yaw_mode ))

(defmethod dji_sdk::MissionHotpointTask
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:radius __radius) 0.0)
    ((:angular_speed __angular_speed) 0.0)
    ((:is_clockwise __is_clockwise) 0)
    ((:start_point __start_point) 0)
    ((:yaw_mode __yaw_mode) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _radius (float __radius))
   (setq _angular_speed (float __angular_speed))
   (setq _is_clockwise (round __is_clockwise))
   (setq _start_point (round __start_point))
   (setq _yaw_mode (round __yaw_mode))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:angular_speed
   (&optional __angular_speed)
   (if __angular_speed (setq _angular_speed __angular_speed)) _angular_speed)
  (:is_clockwise
   (&optional __is_clockwise)
   (if __is_clockwise (setq _is_clockwise __is_clockwise)) _is_clockwise)
  (:start_point
   (&optional __start_point)
   (if __start_point (setq _start_point __start_point)) _start_point)
  (:yaw_mode
   (&optional __yaw_mode)
   (if __yaw_mode (setq _yaw_mode __yaw_mode)) _yaw_mode)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _radius
    8
    ;; float32 _angular_speed
    4
    ;; uint8 _is_clockwise
    1
    ;; uint8 _start_point
    1
    ;; uint8 _yaw_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _angular_speed
       (sys::poke _angular_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _is_clockwise
       (write-byte _is_clockwise s)
     ;; uint8 _start_point
       (write-byte _start_point s)
     ;; uint8 _yaw_mode
       (write-byte _yaw_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _angular_speed
     (setq _angular_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _is_clockwise
     (setq _is_clockwise (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start_point
     (setq _start_point (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_mode
     (setq _yaw_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionHotpointTask :md5sum-) "5700988132c5f205ad38c15800896e84")
(setf (get dji_sdk::MissionHotpointTask :datatype-) "dji_sdk/MissionHotpointTask")
(setf (get dji_sdk::MissionHotpointTask :definition-)
      "float64 latitude  # degree
float64 longitude # degree
float64 altitude  # meter
float64 radius    # meter
float32 angular_speed #deg/s
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode

")



(provide :dji_sdk/MissionHotpointTask "5700988132c5f205ad38c15800896e84")


