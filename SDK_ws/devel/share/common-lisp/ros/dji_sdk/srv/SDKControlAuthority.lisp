; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SDKControlAuthority-request.msg.html

(cl:defclass <SDKControlAuthority-request> (roslisp-msg-protocol:ros-message)
  ((control_enable
    :reader control_enable
    :initarg :control_enable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDKControlAuthority-request (<SDKControlAuthority-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDKControlAuthority-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDKControlAuthority-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SDKControlAuthority-request> is deprecated: use dji_sdk-srv:SDKControlAuthority-request instead.")))

(cl:ensure-generic-function 'control_enable-val :lambda-list '(m))
(cl:defmethod control_enable-val ((m <SDKControlAuthority-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:control_enable-val is deprecated.  Use dji_sdk-srv:control_enable instead.")
  (control_enable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SDKControlAuthority-request>)))
    "Constants for message type '<SDKControlAuthority-request>"
  '((:RELEASE_CONTROL . 0)
    (:REQUEST_CONTROL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SDKControlAuthority-request)))
    "Constants for message type 'SDKControlAuthority-request"
  '((:RELEASE_CONTROL . 0)
    (:REQUEST_CONTROL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDKControlAuthority-request>) ostream)
  "Serializes a message object of type '<SDKControlAuthority-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_enable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDKControlAuthority-request>) istream)
  "Deserializes a message object of type '<SDKControlAuthority-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_enable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDKControlAuthority-request>)))
  "Returns string type for a service object of type '<SDKControlAuthority-request>"
  "dji_sdk/SDKControlAuthorityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDKControlAuthority-request)))
  "Returns string type for a service object of type 'SDKControlAuthority-request"
  "dji_sdk/SDKControlAuthorityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDKControlAuthority-request>)))
  "Returns md5sum for a message object of type '<SDKControlAuthority-request>"
  "ab9a31a36ad499da6a1bb989580360dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDKControlAuthority-request)))
  "Returns md5sum for a message object of type 'SDKControlAuthority-request"
  "ab9a31a36ad499da6a1bb989580360dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDKControlAuthority-request>)))
  "Returns full string definition for message of type '<SDKControlAuthority-request>"
  (cl:format cl:nil "~%uint8 RELEASE_CONTROL = 0~%uint8 REQUEST_CONTROL = 1~%~%~%uint8 control_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDKControlAuthority-request)))
  "Returns full string definition for message of type 'SDKControlAuthority-request"
  (cl:format cl:nil "~%uint8 RELEASE_CONTROL = 0~%uint8 REQUEST_CONTROL = 1~%~%~%uint8 control_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDKControlAuthority-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDKControlAuthority-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SDKControlAuthority-request
    (cl:cons ':control_enable (control_enable msg))
))
;//! \htmlinclude SDKControlAuthority-response.msg.html

(cl:defclass <SDKControlAuthority-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SDKControlAuthority-response (<SDKControlAuthority-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDKControlAuthority-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDKControlAuthority-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SDKControlAuthority-response> is deprecated: use dji_sdk-srv:SDKControlAuthority-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SDKControlAuthority-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <SDKControlAuthority-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <SDKControlAuthority-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <SDKControlAuthority-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDKControlAuthority-response>) ostream)
  "Serializes a message object of type '<SDKControlAuthority-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDKControlAuthority-response>) istream)
  "Deserializes a message object of type '<SDKControlAuthority-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDKControlAuthority-response>)))
  "Returns string type for a service object of type '<SDKControlAuthority-response>"
  "dji_sdk/SDKControlAuthorityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDKControlAuthority-response)))
  "Returns string type for a service object of type 'SDKControlAuthority-response"
  "dji_sdk/SDKControlAuthorityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDKControlAuthority-response>)))
  "Returns md5sum for a message object of type '<SDKControlAuthority-response>"
  "ab9a31a36ad499da6a1bb989580360dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDKControlAuthority-response)))
  "Returns md5sum for a message object of type 'SDKControlAuthority-response"
  "ab9a31a36ad499da6a1bb989580360dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDKControlAuthority-response>)))
  "Returns full string definition for message of type '<SDKControlAuthority-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDKControlAuthority-response)))
  "Returns full string definition for message of type 'SDKControlAuthority-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDKControlAuthority-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDKControlAuthority-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SDKControlAuthority-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SDKControlAuthority)))
  'SDKControlAuthority-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SDKControlAuthority)))
  'SDKControlAuthority-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDKControlAuthority)))
  "Returns string type for a service object of type '<SDKControlAuthority>"
  "dji_sdk/SDKControlAuthority")