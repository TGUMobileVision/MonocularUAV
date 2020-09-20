; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude Activation-request.msg.html

(cl:defclass <Activation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Activation-request (<Activation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Activation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Activation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<Activation-request> is deprecated: use dji_sdk-srv:Activation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Activation-request>) ostream)
  "Serializes a message object of type '<Activation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Activation-request>) istream)
  "Deserializes a message object of type '<Activation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Activation-request>)))
  "Returns string type for a service object of type '<Activation-request>"
  "dji_sdk/ActivationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activation-request)))
  "Returns string type for a service object of type 'Activation-request"
  "dji_sdk/ActivationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Activation-request>)))
  "Returns md5sum for a message object of type '<Activation-request>"
  "f03b0bc279b265c40946c1011df83013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Activation-request)))
  "Returns md5sum for a message object of type 'Activation-request"
  "f03b0bc279b265c40946c1011df83013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Activation-request>)))
  "Returns full string definition for message of type '<Activation-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Activation-request)))
  "Returns full string definition for message of type 'Activation-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Activation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Activation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Activation-request
))
;//! \htmlinclude Activation-response.msg.html

(cl:defclass <Activation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (cmd_set
    :reader cmd_set
    :initarg :cmd_set
    :type cl:fixnum
    :initform 0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (ack_data
    :reader ack_data
    :initarg :ack_data
    :type cl:integer
    :initform 0))
)

(cl:defclass Activation-response (<Activation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Activation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Activation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<Activation-response> is deprecated: use dji_sdk-srv:Activation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Activation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <Activation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <Activation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <Activation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Activation-response>) ostream)
  "Serializes a message object of type '<Activation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Activation-response>) istream)
  "Deserializes a message object of type '<Activation-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Activation-response>)))
  "Returns string type for a service object of type '<Activation-response>"
  "dji_sdk/ActivationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activation-response)))
  "Returns string type for a service object of type 'Activation-response"
  "dji_sdk/ActivationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Activation-response>)))
  "Returns md5sum for a message object of type '<Activation-response>"
  "f03b0bc279b265c40946c1011df83013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Activation-response)))
  "Returns md5sum for a message object of type 'Activation-response"
  "f03b0bc279b265c40946c1011df83013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Activation-response>)))
  "Returns full string definition for message of type '<Activation-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Activation-response)))
  "Returns full string definition for message of type 'Activation-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Activation-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Activation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Activation-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Activation)))
  'Activation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Activation)))
  'Activation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activation)))
  "Returns string type for a service object of type '<Activation>"
  "dji_sdk/Activation")