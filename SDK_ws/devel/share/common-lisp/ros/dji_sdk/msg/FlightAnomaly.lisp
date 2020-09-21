; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude FlightAnomaly.msg.html

(cl:defclass <FlightAnomaly> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass FlightAnomaly (<FlightAnomaly>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlightAnomaly>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlightAnomaly)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<FlightAnomaly> is deprecated: use dji_sdk-msg:FlightAnomaly instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <FlightAnomaly>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data-val is deprecated.  Use dji_sdk-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FlightAnomaly>)))
    "Constants for message type '<FlightAnomaly>"
  '((:IMPACT_IN_AIR . 1)
    (:RANDOM_FLY . 2)
    (:VERTICAL_CONTROL_FAIL . 4)
    (:HORIZONTAL_CONTROL_FAIL . 8)
    (:YAW_CONTROL_FAIL . 16)
    (:AIRCRAFT_IS_FALLING . 32)
    (:STRONG_WIND_LEVEL1 . 64)
    (:STRONG_WIND_LEVEL2 . 128)
    (:COMPASS_INSTALLATION_ERROR . 256)
    (:IMU_INSTALLATION_ERROR . 512)
    (:ESC_TEMPERATURE_HIGH . 1024)
    (:ESC_DISCONNECTED . 2048)
    (:GPS_YAW_ERROR . 4096))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FlightAnomaly)))
    "Constants for message type 'FlightAnomaly"
  '((:IMPACT_IN_AIR . 1)
    (:RANDOM_FLY . 2)
    (:VERTICAL_CONTROL_FAIL . 4)
    (:HORIZONTAL_CONTROL_FAIL . 8)
    (:YAW_CONTROL_FAIL . 16)
    (:AIRCRAFT_IS_FALLING . 32)
    (:STRONG_WIND_LEVEL1 . 64)
    (:STRONG_WIND_LEVEL2 . 128)
    (:COMPASS_INSTALLATION_ERROR . 256)
    (:IMU_INSTALLATION_ERROR . 512)
    (:ESC_TEMPERATURE_HIGH . 1024)
    (:ESC_DISCONNECTED . 2048)
    (:GPS_YAW_ERROR . 4096))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlightAnomaly>) ostream)
  "Serializes a message object of type '<FlightAnomaly>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlightAnomaly>) istream)
  "Deserializes a message object of type '<FlightAnomaly>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlightAnomaly>)))
  "Returns string type for a message object of type '<FlightAnomaly>"
  "dji_sdk/FlightAnomaly")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlightAnomaly)))
  "Returns string type for a message object of type 'FlightAnomaly"
  "dji_sdk/FlightAnomaly")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlightAnomaly>)))
  "Returns md5sum for a message object of type '<FlightAnomaly>"
  "098979ec2b2d91dd43226500118b8680")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlightAnomaly)))
  "Returns md5sum for a message object of type 'FlightAnomaly"
  "098979ec2b2d91dd43226500118b8680")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlightAnomaly>)))
  "Returns full string definition for message of type '<FlightAnomaly>"
  (cl:format cl:nil "# Here is an example how to use FlightAnomaly msg:~%#~%# void flightAnomalyCallback(const dji_sdk::FlightAnomaly::ConstPtr & msg)~%# {~%#   uint32_t flightAnomalyData = msg->data;~%#   if(flightAnomalyData)~%#   {~%#     ROS_INFO(\"Flight Anomaly Reported by Flight Controller. Here are details:\");~%#     if(flightAnomalyData && dji_sdk::FlightAnomaly::COMPASS_INSTALLATION_ERROR)~%#     {~%#         ROS_INFO(\"COMPASS_INSTALLATION_ERROR\");~%#     }~%#~%#     if(flightAnomalyData && dji_sdk::FlightAnomaly::IMU_INSTALLATION_ERROR)~%#     {~%#         ROS_INFO(\"IMU_INSTALLATION_ERROR\");~%#     }~%#~%#     // etc...~%#   }~%# }~%#~%#~%~%# constants for anomaly details~%uint32 IMPACT_IN_AIR              = 1     #~%uint32 RANDOM_FLY                 = 2     #~%uint32 VERTICAL_CONTROL_FAIL      = 4     #~%uint32 HORIZONTAL_CONTROL_FAIL    = 8     #~%uint32 YAW_CONTROL_FAIL           = 16    #~%uint32 AIRCRAFT_IS_FALLING        = 32    #~%uint32 STRONG_WIND_LEVEL1         = 64    #~%uint32 STRONG_WIND_LEVEL2         = 128   #~%uint32 COMPASS_INSTALLATION_ERROR = 256   #~%uint32 IMU_INSTALLATION_ERROR     = 512   #~%uint32 ESC_TEMPERATURE_HIGH       = 1024  #~%uint32 ESC_DISCONNECTED           = 2048  #~%uint32 GPS_YAW_ERROR              = 4096  #~%~%#~%uint32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlightAnomaly)))
  "Returns full string definition for message of type 'FlightAnomaly"
  (cl:format cl:nil "# Here is an example how to use FlightAnomaly msg:~%#~%# void flightAnomalyCallback(const dji_sdk::FlightAnomaly::ConstPtr & msg)~%# {~%#   uint32_t flightAnomalyData = msg->data;~%#   if(flightAnomalyData)~%#   {~%#     ROS_INFO(\"Flight Anomaly Reported by Flight Controller. Here are details:\");~%#     if(flightAnomalyData && dji_sdk::FlightAnomaly::COMPASS_INSTALLATION_ERROR)~%#     {~%#         ROS_INFO(\"COMPASS_INSTALLATION_ERROR\");~%#     }~%#~%#     if(flightAnomalyData && dji_sdk::FlightAnomaly::IMU_INSTALLATION_ERROR)~%#     {~%#         ROS_INFO(\"IMU_INSTALLATION_ERROR\");~%#     }~%#~%#     // etc...~%#   }~%# }~%#~%#~%~%# constants for anomaly details~%uint32 IMPACT_IN_AIR              = 1     #~%uint32 RANDOM_FLY                 = 2     #~%uint32 VERTICAL_CONTROL_FAIL      = 4     #~%uint32 HORIZONTAL_CONTROL_FAIL    = 8     #~%uint32 YAW_CONTROL_FAIL           = 16    #~%uint32 AIRCRAFT_IS_FALLING        = 32    #~%uint32 STRONG_WIND_LEVEL1         = 64    #~%uint32 STRONG_WIND_LEVEL2         = 128   #~%uint32 COMPASS_INSTALLATION_ERROR = 256   #~%uint32 IMU_INSTALLATION_ERROR     = 512   #~%uint32 ESC_TEMPERATURE_HIGH       = 1024  #~%uint32 ESC_DISCONNECTED           = 2048  #~%uint32 GPS_YAW_ERROR              = 4096  #~%~%#~%uint32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlightAnomaly>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlightAnomaly>))
  "Converts a ROS message object to a list"
  (cl:list 'FlightAnomaly
    (cl:cons ':data (data msg))
))
