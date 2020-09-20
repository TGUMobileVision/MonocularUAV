; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpAction-request.msg.html

(cl:defclass <MissionHpAction-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionHpAction-request (<MissionHpAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpAction-request> is deprecated: use dji_sdk-srv:MissionHpAction-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <MissionHpAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:action-val is deprecated.  Use dji_sdk-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionHpAction-request>)))
    "Constants for message type '<MissionHpAction-request>"
  '((:ACTION_START . 0)
    (:ACTION_STOP . 1)
    (:ACTION_PAUSE . 2)
    (:ACTION_RESUME . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionHpAction-request)))
    "Constants for message type 'MissionHpAction-request"
  '((:ACTION_START . 0)
    (:ACTION_STOP . 1)
    (:ACTION_PAUSE . 2)
    (:ACTION_RESUME . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpAction-request>) ostream)
  "Serializes a message object of type '<MissionHpAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpAction-request>) istream)
  "Deserializes a message object of type '<MissionHpAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpAction-request>)))
  "Returns string type for a service object of type '<MissionHpAction-request>"
  "dji_sdk/MissionHpActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpAction-request)))
  "Returns string type for a service object of type 'MissionHpAction-request"
  "dji_sdk/MissionHpActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpAction-request>)))
  "Returns md5sum for a message object of type '<MissionHpAction-request>"
  "067ec5f79e77e0b4c0121e09e733b483")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpAction-request)))
  "Returns md5sum for a message object of type 'MissionHpAction-request"
  "067ec5f79e77e0b4c0121e09e733b483")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpAction-request>)))
  "Returns full string definition for message of type '<MissionHpAction-request>"
  (cl:format cl:nil "~%uint8 ACTION_START  = 0~%uint8 ACTION_STOP   = 1~%uint8 ACTION_PAUSE  = 2~%uint8 ACTION_RESUME = 3~%~%~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpAction-request)))
  "Returns full string definition for message of type 'MissionHpAction-request"
  (cl:format cl:nil "~%uint8 ACTION_START  = 0~%uint8 ACTION_STOP   = 1~%uint8 ACTION_PAUSE  = 2~%uint8 ACTION_RESUME = 3~%~%~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpAction-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpAction-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude MissionHpAction-response.msg.html

(cl:defclass <MissionHpAction-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MissionHpAction-response (<MissionHpAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpAction-response> is deprecated: use dji_sdk-srv:MissionHpAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionHpAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionHpAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionHpAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpAction-response>) ostream)
  "Serializes a message object of type '<MissionHpAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpAction-response>) istream)
  "Deserializes a message object of type '<MissionHpAction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpAction-response>)))
  "Returns string type for a service object of type '<MissionHpAction-response>"
  "dji_sdk/MissionHpActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpAction-response)))
  "Returns string type for a service object of type 'MissionHpAction-response"
  "dji_sdk/MissionHpActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpAction-response>)))
  "Returns md5sum for a message object of type '<MissionHpAction-response>"
  "067ec5f79e77e0b4c0121e09e733b483")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpAction-response)))
  "Returns md5sum for a message object of type 'MissionHpAction-response"
  "067ec5f79e77e0b4c0121e09e733b483")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpAction-response>)))
  "Returns full string definition for message of type '<MissionHpAction-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpAction-response)))
  "Returns full string definition for message of type 'MissionHpAction-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpAction-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpAction-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpAction)))
  'MissionHpAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpAction)))
  'MissionHpAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpAction)))
  "Returns string type for a service object of type '<MissionHpAction>"
  "dji_sdk/MissionHpAction")