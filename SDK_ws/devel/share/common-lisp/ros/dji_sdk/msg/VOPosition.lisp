; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude VOPosition.msg.html

(cl:defclass <VOPosition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (xHealth
    :reader xHealth
    :initarg :xHealth
    :type cl:fixnum
    :initform 0)
   (yHealth
    :reader yHealth
    :initarg :yHealth
    :type cl:fixnum
    :initform 0)
   (zHealth
    :reader zHealth
    :initarg :zHealth
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VOPosition (<VOPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VOPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VOPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<VOPosition> is deprecated: use dji_sdk-msg:VOPosition instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:header-val is deprecated.  Use dji_sdk-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:x-val is deprecated.  Use dji_sdk-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:y-val is deprecated.  Use dji_sdk-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:z-val is deprecated.  Use dji_sdk-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'xHealth-val :lambda-list '(m))
(cl:defmethod xHealth-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:xHealth-val is deprecated.  Use dji_sdk-msg:xHealth instead.")
  (xHealth m))

(cl:ensure-generic-function 'yHealth-val :lambda-list '(m))
(cl:defmethod yHealth-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:yHealth-val is deprecated.  Use dji_sdk-msg:yHealth instead.")
  (yHealth m))

(cl:ensure-generic-function 'zHealth-val :lambda-list '(m))
(cl:defmethod zHealth-val ((m <VOPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:zHealth-val is deprecated.  Use dji_sdk-msg:zHealth instead.")
  (zHealth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VOPosition>) ostream)
  "Serializes a message object of type '<VOPosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xHealth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yHealth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zHealth)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VOPosition>) istream)
  "Deserializes a message object of type '<VOPosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xHealth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yHealth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zHealth)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VOPosition>)))
  "Returns string type for a message object of type '<VOPosition>"
  "dji_sdk/VOPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VOPosition)))
  "Returns string type for a message object of type 'VOPosition"
  "dji_sdk/VOPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VOPosition>)))
  "Returns md5sum for a message object of type '<VOPosition>"
  "6edcbd5875a94886d3601c7c54dba55d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VOPosition)))
  "Returns md5sum for a message object of type 'VOPosition"
  "6edcbd5875a94886d3601c7c54dba55d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VOPosition>)))
  "Returns full string definition for message of type '<VOPosition>"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%uint8   xHealth~%uint8   yHealth~%uint8   zHealth~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VOPosition)))
  "Returns full string definition for message of type 'VOPosition"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%uint8   xHealth~%uint8   yHealth~%uint8   zHealth~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VOPosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VOPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'VOPosition
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':xHealth (xHealth msg))
    (cl:cons ':yHealth (yHealth msg))
    (cl:cons ':zHealth (zHealth msg))
))
