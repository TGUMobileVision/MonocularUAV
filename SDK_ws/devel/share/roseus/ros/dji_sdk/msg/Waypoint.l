;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Waypoint)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Waypoint (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::WAYPOINT")
  (make-package "DJI_SDK::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass dji_sdk::Waypoint
  :super ros::object
  :slots (_latitude _longitude _altitude _heading _staytime ))

(defmethod dji_sdk::Waypoint
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:heading __heading) 0)
    ((:staytime __staytime) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _heading (round __heading))
   (setq _staytime (round __staytime))
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
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:staytime
   (&optional __staytime)
   (if __staytime (setq _staytime __staytime)) _staytime)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _altitude
    4
    ;; int16 _heading
    2
    ;; uint16 _staytime
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _heading
       (write-word _heading s)
     ;; uint16 _staytime
       (write-word _staytime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _heading
     (setq _heading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _staytime
     (setq _staytime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_sdk::Waypoint :md5sum-) "1d0881fabe75ce713c47829a8aa66d90")
(setf (get dji_sdk::Waypoint :datatype-) "dji_sdk/Waypoint")
(setf (get dji_sdk::Waypoint :definition-)
      "float64 latitude      # in degree
float64 longitude     # in degree
float32 altitude
int16 heading         #heading is in [-180,180]
uint16 staytime       # in second


")



(provide :dji_sdk/Waypoint "1d0881fabe75ce713c47829a8aa66d90")


