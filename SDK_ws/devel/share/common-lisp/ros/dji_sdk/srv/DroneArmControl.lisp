; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude DroneArmControl-request.msg.html

(cl:defclass <DroneArmControl-request> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DroneArmControl-request (<DroneArmControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneArmControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneArmControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<DroneArmControl-request> is deprecated: use dji_sdk-srv:DroneArmControl-request instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <DroneArmControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:arm-val is deprecated.  Use dji_sdk-srv:arm instead.")
  (arm m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DroneArmControl-request>)))
    "Constants for message type '<DroneArmControl-request>"
  '((:DISARM_COMMAND . 0)
    (:ARM_COMMAND . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DroneArmControl-request)))
    "Constants for message type 'DroneArmControl-request"
  '((:DISARM_COMMAND . 0)
    (:ARM_COMMAND . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneArmControl-request>) ostream)
  "Serializes a message object of type '<DroneArmControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneArmControl-request>) istream)
  "Deserializes a message object of type '<DroneArmControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneArmControl-request>)))
  "Returns string type for a service object of type '<DroneArmControl-request>"
  "dji_sdk/DroneArmControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneArmControl-request)))
  "Returns string type for a service object of type 'DroneArmControl-request"
  "dji_sdk/DroneArmControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneArmControl-request>)))
  "Returns md5sum for a message object of type '<DroneArmControl-request>"
  "0a8071a11c3d6b34ba24869e069f733c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneArmControl-request)))
  "Returns md5sum for a message object of type 'DroneArmControl-request"
  "0a8071a11c3d6b34ba24869e069f733c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneArmControl-request>)))
  "Returns full string definition for message of type '<DroneArmControl-request>"
  (cl:format cl:nil "~%uint8 DISARM_COMMAND = 0~%uint8 ARM_COMMAND    = 1~%~%~%uint8 arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneArmControl-request)))
  "Returns full string definition for message of type 'DroneArmControl-request"
  (cl:format cl:nil "~%uint8 DISARM_COMMAND = 0~%uint8 ARM_COMMAND    = 1~%~%~%uint8 arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneArmControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneArmControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneArmControl-request
    (cl:cons ':arm (arm msg))
))
;//! \htmlinclude DroneArmControl-response.msg.html

(cl:defclass <DroneArmControl-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DroneArmControl-response (<DroneArmControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneArmControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneArmControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<DroneArmControl-response> is deprecated: use dji_sdk-srv:DroneArmControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DroneArmControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <DroneArmControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <DroneArmControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <DroneArmControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneArmControl-response>) ostream)
  "Serializes a message object of type '<DroneArmControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneArmControl-response>) istream)
  "Deserializes a message object of type '<DroneArmControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneArmControl-response>)))
  "Returns string type for a service object of type '<DroneArmControl-response>"
  "dji_sdk/DroneArmControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneArmControl-response)))
  "Returns string type for a service object of type 'DroneArmControl-response"
  "dji_sdk/DroneArmControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneArmControl-response>)))
  "Returns md5sum for a message object of type '<DroneArmControl-response>"
  "0a8071a11c3d6b34ba24869e069f733c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneArmControl-response)))
  "Returns md5sum for a message object of type 'DroneArmControl-response"
  "0a8071a11c3d6b34ba24869e069f733c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneArmControl-response>)))
  "Returns full string definition for message of type '<DroneArmControl-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneArmControl-response)))
  "Returns full string definition for message of type 'DroneArmControl-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneArmControl-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneArmControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneArmControl-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DroneArmControl)))
  'DroneArmControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DroneArmControl)))
  'DroneArmControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneArmControl)))
  "Returns string type for a service object of type '<DroneArmControl>"
  "dji_sdk/DroneArmControl")