;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::FlightAnomaly)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'FlightAnomaly (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::FLIGHTANOMALY")
  (make-package "DJI_SDK::FLIGHTANOMALY"))

(in-package "ROS")
;;//! \htmlinclude FlightAnomaly.msg.html


(intern "*IMPACT_IN_AIR*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*IMPACT_IN_AIR* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*IMPACT_IN_AIR* 1)
(intern "*RANDOM_FLY*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*RANDOM_FLY* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*RANDOM_FLY* 2)
(intern "*VERTICAL_CONTROL_FAIL*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*VERTICAL_CONTROL_FAIL* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*VERTICAL_CONTROL_FAIL* 4)
(intern "*HORIZONTAL_CONTROL_FAIL*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*HORIZONTAL_CONTROL_FAIL* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*HORIZONTAL_CONTROL_FAIL* 8)
(intern "*YAW_CONTROL_FAIL*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*YAW_CONTROL_FAIL* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*YAW_CONTROL_FAIL* 16)
(intern "*AIRCRAFT_IS_FALLING*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*AIRCRAFT_IS_FALLING* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*AIRCRAFT_IS_FALLING* 32)
(intern "*STRONG_WIND_LEVEL1*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*STRONG_WIND_LEVEL1* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*STRONG_WIND_LEVEL1* 64)
(intern "*STRONG_WIND_LEVEL2*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*STRONG_WIND_LEVEL2* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*STRONG_WIND_LEVEL2* 128)
(intern "*COMPASS_INSTALLATION_ERROR*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*COMPASS_INSTALLATION_ERROR* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*COMPASS_INSTALLATION_ERROR* 256)
(intern "*IMU_INSTALLATION_ERROR*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*IMU_INSTALLATION_ERROR* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*IMU_INSTALLATION_ERROR* 512)
(intern "*ESC_TEMPERATURE_HIGH*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*ESC_TEMPERATURE_HIGH* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*ESC_TEMPERATURE_HIGH* 1024)
(intern "*ESC_DISCONNECTED*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*ESC_DISCONNECTED* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*ESC_DISCONNECTED* 2048)
(intern "*GPS_YAW_ERROR*" (find-package "DJI_SDK::FLIGHTANOMALY"))
(shadow '*GPS_YAW_ERROR* (find-package "DJI_SDK::FLIGHTANOMALY"))
(defconstant dji_sdk::FlightAnomaly::*GPS_YAW_ERROR* 4096)
(defclass dji_sdk::FlightAnomaly
  :super ros::object
  :slots (_data ))

(defmethod dji_sdk::FlightAnomaly
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::FlightAnomaly :md5sum-) "098979ec2b2d91dd43226500118b8680")
(setf (get dji_sdk::FlightAnomaly :datatype-) "dji_sdk/FlightAnomaly")
(setf (get dji_sdk::FlightAnomaly :definition-)
      "# Here is an example how to use FlightAnomaly msg:
#
# void flightAnomalyCallback(const dji_sdk::FlightAnomaly::ConstPtr & msg)
# {
#   uint32_t flightAnomalyData = msg->data;
#   if(flightAnomalyData)
#   {
#     ROS_INFO(\"Flight Anomaly Reported by Flight Controller. Here are details:\");
#     if(flightAnomalyData && dji_sdk::FlightAnomaly::COMPASS_INSTALLATION_ERROR)
#     {
#         ROS_INFO(\"COMPASS_INSTALLATION_ERROR\");
#     }
#
#     if(flightAnomalyData && dji_sdk::FlightAnomaly::IMU_INSTALLATION_ERROR)
#     {
#         ROS_INFO(\"IMU_INSTALLATION_ERROR\");
#     }
#
#     // etc...
#   }
# }
#
#

# constants for anomaly details
uint32 IMPACT_IN_AIR              = 1     #
uint32 RANDOM_FLY                 = 2     #
uint32 VERTICAL_CONTROL_FAIL      = 4     #
uint32 HORIZONTAL_CONTROL_FAIL    = 8     #
uint32 YAW_CONTROL_FAIL           = 16    #
uint32 AIRCRAFT_IS_FALLING        = 32    #
uint32 STRONG_WIND_LEVEL1         = 64    #
uint32 STRONG_WIND_LEVEL2         = 128   #
uint32 COMPASS_INSTALLATION_ERROR = 256   #
uint32 IMU_INSTALLATION_ERROR     = 512   #
uint32 ESC_TEMPERATURE_HIGH       = 1024  #
uint32 ESC_DISCONNECTED           = 2048  #
uint32 GPS_YAW_ERROR              = 4096  #

#
uint32 data


")



(provide :dji_sdk/FlightAnomaly "098979ec2b2d91dd43226500118b8680")


