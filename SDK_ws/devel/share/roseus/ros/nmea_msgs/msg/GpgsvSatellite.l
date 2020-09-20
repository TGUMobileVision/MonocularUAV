;; Auto-generated. Do not edit!


(when (boundp 'nmea_msgs::GpgsvSatellite)
  (if (not (find-package "NMEA_MSGS"))
    (make-package "NMEA_MSGS"))
  (shadow 'GpgsvSatellite (find-package "NMEA_MSGS")))
(unless (find-package "NMEA_MSGS::GPGSVSATELLITE")
  (make-package "NMEA_MSGS::GPGSVSATELLITE"))

(in-package "ROS")
;;//! \htmlinclude GpgsvSatellite.msg.html


(defclass nmea_msgs::GpgsvSatellite
  :super ros::object
  :slots (_prn _elevation _azimuth _snr ))

(defmethod nmea_msgs::GpgsvSatellite
  (:init
   (&key
    ((:prn __prn) 0)
    ((:elevation __elevation) 0)
    ((:azimuth __azimuth) 0)
    ((:snr __snr) 0)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _elevation (round __elevation))
   (setq _azimuth (round __azimuth))
   (setq _snr (round __snr))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:snr
   (&optional __snr)
   (if __snr (setq _snr __snr)) _snr)
  (:serialization-length
   ()
   (+
    ;; uint8 _prn
    1
    ;; uint8 _elevation
    1
    ;; uint16 _azimuth
    2
    ;; int8 _snr
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _prn
       (write-byte _prn s)
     ;; uint8 _elevation
       (write-byte _elevation s)
     ;; uint16 _azimuth
       (write-word _azimuth s)
     ;; int8 _snr
       (write-byte _snr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _prn
     (setq _prn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _elevation
     (setq _elevation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _azimuth
     (setq _azimuth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _snr
     (setq _snr (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _snr 127) (setq _snr (- _snr 256)))
   ;;
   self)
  )

(setf (get nmea_msgs::GpgsvSatellite :md5sum-) "d862f2ce05a26a83264a8add99c7b668")
(setf (get nmea_msgs::GpgsvSatellite :datatype-) "nmea_msgs/GpgsvSatellite")
(setf (get nmea_msgs::GpgsvSatellite :definition-)
      "# Satellite data structure used in GPGSV messages

# PRN number of the satellite
# GPS = 1..32
# SBAS = 33..64
# GLO = 65..96
uint8 prn

# Elevation, degrees. Maximum 90
uint8 elevation

# Azimuth, True North degrees. [0, 359]
uint16 azimuth

# Signal to noise ratio, 0-99 dB. -1 when null in NMEA sentence (not tracking)
int8 snr

")



(provide :nmea_msgs/GpgsvSatellite "d862f2ce05a26a83264a8add99c7b668")


