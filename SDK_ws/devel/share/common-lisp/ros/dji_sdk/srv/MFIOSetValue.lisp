; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MFIOSetValue-request.msg.html

(cl:defclass <MFIOSetValue-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (init_on_time_us
    :reader init_on_time_us
    :initarg :init_on_time_us
    :type cl:integer
    :initform 0))
)

(cl:defclass MFIOSetValue-request (<MFIOSetValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MFIOSetValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MFIOSetValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MFIOSetValue-request> is deprecated: use dji_sdk-srv:MFIOSetValue-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <MFIOSetValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:channel-val is deprecated.  Use dji_sdk-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'init_on_time_us-val :lambda-list '(m))
(cl:defmethod init_on_time_us-val ((m <MFIOSetValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:init_on_time_us-val is deprecated.  Use dji_sdk-srv:init_on_time_us instead.")
  (init_on_time_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MFIOSetValue-request>) ostream)
  "Serializes a message object of type '<MFIOSetValue-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'init_on_time_us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MFIOSetValue-request>) istream)
  "Deserializes a message object of type '<MFIOSetValue-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MFIOSetValue-request>)))
  "Returns string type for a service object of type '<MFIOSetValue-request>"
  "dji_sdk/MFIOSetValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIOSetValue-request)))
  "Returns string type for a service object of type 'MFIOSetValue-request"
  "dji_sdk/MFIOSetValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MFIOSetValue-request>)))
  "Returns md5sum for a message object of type '<MFIOSetValue-request>"
  "7a1c84fd096204723ecbb1a57b618e28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MFIOSetValue-request)))
  "Returns md5sum for a message object of type 'MFIOSetValue-request"
  "7a1c84fd096204723ecbb1a57b618e28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MFIOSetValue-request>)))
  "Returns full string definition for message of type '<MFIOSetValue-request>"
  (cl:format cl:nil "uint8 channel~%uint32 init_on_time_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MFIOSetValue-request)))
  "Returns full string definition for message of type 'MFIOSetValue-request"
  (cl:format cl:nil "uint8 channel~%uint32 init_on_time_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MFIOSetValue-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MFIOSetValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MFIOSetValue-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':init_on_time_us (init_on_time_us msg))
))
;//! \htmlinclude MFIOSetValue-response.msg.html

(cl:defclass <MFIOSetValue-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MFIOSetValue-response (<MFIOSetValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MFIOSetValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MFIOSetValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MFIOSetValue-response> is deprecated: use dji_sdk-srv:MFIOSetValue-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MFIOSetValue-response>) ostream)
  "Serializes a message object of type '<MFIOSetValue-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MFIOSetValue-response>) istream)
  "Deserializes a message object of type '<MFIOSetValue-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MFIOSetValue-response>)))
  "Returns string type for a service object of type '<MFIOSetValue-response>"
  "dji_sdk/MFIOSetValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIOSetValue-response)))
  "Returns string type for a service object of type 'MFIOSetValue-response"
  "dji_sdk/MFIOSetValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MFIOSetValue-response>)))
  "Returns md5sum for a message object of type '<MFIOSetValue-response>"
  "7a1c84fd096204723ecbb1a57b618e28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MFIOSetValue-response)))
  "Returns md5sum for a message object of type 'MFIOSetValue-response"
  "7a1c84fd096204723ecbb1a57b618e28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MFIOSetValue-response>)))
  "Returns full string definition for message of type '<MFIOSetValue-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MFIOSetValue-response)))
  "Returns full string definition for message of type 'MFIOSetValue-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MFIOSetValue-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MFIOSetValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MFIOSetValue-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MFIOSetValue)))
  'MFIOSetValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MFIOSetValue)))
  'MFIOSetValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIOSetValue)))
  "Returns string type for a service object of type '<MFIOSetValue>"
  "dji_sdk/MFIOSetValue")