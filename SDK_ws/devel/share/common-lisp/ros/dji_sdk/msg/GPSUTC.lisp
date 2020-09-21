; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude GPSUTC.msg.html

(cl:defclass <GPSUTC> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (UTCTimeData
    :reader UTCTimeData
    :initarg :UTCTimeData
    :type cl:string
    :initform ""))
)

(cl:defclass GPSUTC (<GPSUTC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSUTC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSUTC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<GPSUTC> is deprecated: use dji_sdk-msg:GPSUTC instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GPSUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:stamp-val is deprecated.  Use dji_sdk-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'UTCTimeData-val :lambda-list '(m))
(cl:defmethod UTCTimeData-val ((m <GPSUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:UTCTimeData-val is deprecated.  Use dji_sdk-msg:UTCTimeData instead.")
  (UTCTimeData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSUTC>) ostream)
  "Serializes a message object of type '<GPSUTC>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'UTCTimeData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'UTCTimeData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSUTC>) istream)
  "Deserializes a message object of type '<GPSUTC>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'UTCTimeData) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'UTCTimeData) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSUTC>)))
  "Returns string type for a message object of type '<GPSUTC>"
  "dji_sdk/GPSUTC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSUTC)))
  "Returns string type for a message object of type 'GPSUTC"
  "dji_sdk/GPSUTC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSUTC>)))
  "Returns md5sum for a message object of type '<GPSUTC>"
  "034c4baeda26125f91567e2717d1cf5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSUTC)))
  "Returns md5sum for a message object of type 'GPSUTC"
  "034c4baeda26125f91567e2717d1cf5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSUTC>)))
  "Returns full string definition for message of type '<GPSUTC>"
  (cl:format cl:nil "# the time stamp of getting this data in the ROS system~%time stamp~%~%# the time stamp from GPS/RTK~%string UTCTimeData~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSUTC)))
  "Returns full string definition for message of type 'GPSUTC"
  (cl:format cl:nil "# the time stamp of getting this data in the ROS system~%time stamp~%~%# the time stamp from GPS/RTK~%string UTCTimeData~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSUTC>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'UTCTimeData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSUTC>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSUTC
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':UTCTimeData (UTCTimeData msg))
))
