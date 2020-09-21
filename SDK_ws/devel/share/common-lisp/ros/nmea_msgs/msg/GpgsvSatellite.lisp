; Auto-generated. Do not edit!


(cl:in-package nmea_msgs-msg)


;//! \htmlinclude GpgsvSatellite.msg.html

(cl:defclass <GpgsvSatellite> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:fixnum
    :initform 0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:fixnum
    :initform 0)
   (snr
    :reader snr
    :initarg :snr
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GpgsvSatellite (<GpgsvSatellite>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpgsvSatellite>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpgsvSatellite)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nmea_msgs-msg:<GpgsvSatellite> is deprecated: use nmea_msgs-msg:GpgsvSatellite instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <GpgsvSatellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nmea_msgs-msg:prn-val is deprecated.  Use nmea_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <GpgsvSatellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nmea_msgs-msg:elevation-val is deprecated.  Use nmea_msgs-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <GpgsvSatellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nmea_msgs-msg:azimuth-val is deprecated.  Use nmea_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'snr-val :lambda-list '(m))
(cl:defmethod snr-val ((m <GpgsvSatellite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nmea_msgs-msg:snr-val is deprecated.  Use nmea_msgs-msg:snr instead.")
  (snr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpgsvSatellite>) ostream)
  "Serializes a message object of type '<GpgsvSatellite>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'elevation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'azimuth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'azimuth)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'snr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpgsvSatellite>) istream)
  "Deserializes a message object of type '<GpgsvSatellite>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'elevation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'azimuth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'azimuth)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'snr) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpgsvSatellite>)))
  "Returns string type for a message object of type '<GpgsvSatellite>"
  "nmea_msgs/GpgsvSatellite")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpgsvSatellite)))
  "Returns string type for a message object of type 'GpgsvSatellite"
  "nmea_msgs/GpgsvSatellite")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpgsvSatellite>)))
  "Returns md5sum for a message object of type '<GpgsvSatellite>"
  "d862f2ce05a26a83264a8add99c7b668")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpgsvSatellite)))
  "Returns md5sum for a message object of type 'GpgsvSatellite"
  "d862f2ce05a26a83264a8add99c7b668")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpgsvSatellite>)))
  "Returns full string definition for message of type '<GpgsvSatellite>"
  (cl:format cl:nil "# Satellite data structure used in GPGSV messages~%~%# PRN number of the satellite~%# GPS = 1..32~%# SBAS = 33..64~%# GLO = 65..96~%uint8 prn~%~%# Elevation, degrees. Maximum 90~%uint8 elevation~%~%# Azimuth, True North degrees. [0, 359]~%uint16 azimuth~%~%# Signal to noise ratio, 0-99 dB. -1 when null in NMEA sentence (not tracking)~%int8 snr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpgsvSatellite)))
  "Returns full string definition for message of type 'GpgsvSatellite"
  (cl:format cl:nil "# Satellite data structure used in GPGSV messages~%~%# PRN number of the satellite~%# GPS = 1..32~%# SBAS = 33..64~%# GLO = 65..96~%uint8 prn~%~%# Elevation, degrees. Maximum 90~%uint8 elevation~%~%# Azimuth, True North degrees. [0, 359]~%uint16 azimuth~%~%# Signal to noise ratio, 0-99 dB. -1 when null in NMEA sentence (not tracking)~%int8 snr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpgsvSatellite>))
  (cl:+ 0
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpgsvSatellite>))
  "Converts a ROS message object to a list"
  (cl:list 'GpgsvSatellite
    (cl:cons ':prn (prn msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':snr (snr msg))
))
