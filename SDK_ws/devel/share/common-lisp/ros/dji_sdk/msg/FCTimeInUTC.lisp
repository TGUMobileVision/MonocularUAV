; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude FCTimeInUTC.msg.html

(cl:defclass <FCTimeInUTC> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (fc_timestamp_us
    :reader fc_timestamp_us
    :initarg :fc_timestamp_us
    :type cl:integer
    :initform 0)
   (fc_utc_yymmdd
    :reader fc_utc_yymmdd
    :initarg :fc_utc_yymmdd
    :type cl:integer
    :initform 0)
   (fc_utc_hhmmss
    :reader fc_utc_hhmmss
    :initarg :fc_utc_hhmmss
    :type cl:integer
    :initform 0))
)

(cl:defclass FCTimeInUTC (<FCTimeInUTC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FCTimeInUTC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FCTimeInUTC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<FCTimeInUTC> is deprecated: use dji_sdk-msg:FCTimeInUTC instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <FCTimeInUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:stamp-val is deprecated.  Use dji_sdk-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'fc_timestamp_us-val :lambda-list '(m))
(cl:defmethod fc_timestamp_us-val ((m <FCTimeInUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:fc_timestamp_us-val is deprecated.  Use dji_sdk-msg:fc_timestamp_us instead.")
  (fc_timestamp_us m))

(cl:ensure-generic-function 'fc_utc_yymmdd-val :lambda-list '(m))
(cl:defmethod fc_utc_yymmdd-val ((m <FCTimeInUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:fc_utc_yymmdd-val is deprecated.  Use dji_sdk-msg:fc_utc_yymmdd instead.")
  (fc_utc_yymmdd m))

(cl:ensure-generic-function 'fc_utc_hhmmss-val :lambda-list '(m))
(cl:defmethod fc_utc_hhmmss-val ((m <FCTimeInUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:fc_utc_hhmmss-val is deprecated.  Use dji_sdk-msg:fc_utc_hhmmss instead.")
  (fc_utc_hhmmss m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FCTimeInUTC>) ostream)
  "Serializes a message object of type '<FCTimeInUTC>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc_utc_yymmdd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc_utc_yymmdd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc_utc_yymmdd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc_utc_yymmdd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc_utc_hhmmss)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc_utc_hhmmss)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc_utc_hhmmss)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc_utc_hhmmss)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FCTimeInUTC>) istream)
  "Deserializes a message object of type '<FCTimeInUTC>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc_utc_yymmdd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc_utc_yymmdd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc_utc_yymmdd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc_utc_yymmdd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc_utc_hhmmss)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc_utc_hhmmss)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc_utc_hhmmss)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc_utc_hhmmss)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FCTimeInUTC>)))
  "Returns string type for a message object of type '<FCTimeInUTC>"
  "dji_sdk/FCTimeInUTC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FCTimeInUTC)))
  "Returns string type for a message object of type 'FCTimeInUTC"
  "dji_sdk/FCTimeInUTC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FCTimeInUTC>)))
  "Returns md5sum for a message object of type '<FCTimeInUTC>"
  "46bad377c3e8bc271c70f3dffa21d6ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FCTimeInUTC)))
  "Returns md5sum for a message object of type 'FCTimeInUTC"
  "46bad377c3e8bc271c70f3dffa21d6ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FCTimeInUTC>)))
  "Returns full string definition for message of type '<FCTimeInUTC>"
  (cl:format cl:nil "# the time stamp of getting this data in the ROS system~%time stamp~%~%# the time stamp in FC~%uint32 fc_timestamp_us~%uint32 fc_utc_yymmdd~%uint32 fc_utc_hhmmss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FCTimeInUTC)))
  "Returns full string definition for message of type 'FCTimeInUTC"
  (cl:format cl:nil "# the time stamp of getting this data in the ROS system~%time stamp~%~%# the time stamp in FC~%uint32 fc_timestamp_us~%uint32 fc_utc_yymmdd~%uint32 fc_utc_hhmmss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FCTimeInUTC>))
  (cl:+ 0
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FCTimeInUTC>))
  "Converts a ROS message object to a list"
  (cl:list 'FCTimeInUTC
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':fc_timestamp_us (fc_timestamp_us msg))
    (cl:cons ':fc_utc_yymmdd (fc_utc_yymmdd msg))
    (cl:cons ':fc_utc_hhmmss (fc_utc_hhmmss msg))
))
