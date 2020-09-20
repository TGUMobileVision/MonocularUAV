; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude DroneTaskControl-request.msg.html

(cl:defclass <DroneTaskControl-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DroneTaskControl-request (<DroneTaskControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneTaskControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneTaskControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<DroneTaskControl-request> is deprecated: use dji_sdk-srv:DroneTaskControl-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <DroneTaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:task-val is deprecated.  Use dji_sdk-srv:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DroneTaskControl-request>)))
    "Constants for message type '<DroneTaskControl-request>"
  '((:TASK_GOHOME . 1)
    (:TASK_TAKEOFF . 4)
    (:TASK_LAND . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DroneTaskControl-request)))
    "Constants for message type 'DroneTaskControl-request"
  '((:TASK_GOHOME . 1)
    (:TASK_TAKEOFF . 4)
    (:TASK_LAND . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneTaskControl-request>) ostream)
  "Serializes a message object of type '<DroneTaskControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneTaskControl-request>) istream)
  "Deserializes a message object of type '<DroneTaskControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneTaskControl-request>)))
  "Returns string type for a service object of type '<DroneTaskControl-request>"
  "dji_sdk/DroneTaskControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneTaskControl-request)))
  "Returns string type for a service object of type 'DroneTaskControl-request"
  "dji_sdk/DroneTaskControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneTaskControl-request>)))
  "Returns md5sum for a message object of type '<DroneTaskControl-request>"
  "ab91c4042653ca6868c5907bf22e4741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneTaskControl-request)))
  "Returns md5sum for a message object of type 'DroneTaskControl-request"
  "ab91c4042653ca6868c5907bf22e4741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneTaskControl-request>)))
  "Returns full string definition for message of type '<DroneTaskControl-request>"
  (cl:format cl:nil "~%uint8 TASK_GOHOME = 1~%uint8 TASK_TAKEOFF = 4~%uint8 TASK_LAND = 6~%~%~%uint8 task~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneTaskControl-request)))
  "Returns full string definition for message of type 'DroneTaskControl-request"
  (cl:format cl:nil "~%uint8 TASK_GOHOME = 1~%uint8 TASK_TAKEOFF = 4~%uint8 TASK_LAND = 6~%~%~%uint8 task~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneTaskControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneTaskControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneTaskControl-request
    (cl:cons ':task (task msg))
))
;//! \htmlinclude DroneTaskControl-response.msg.html

(cl:defclass <DroneTaskControl-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DroneTaskControl-response (<DroneTaskControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneTaskControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneTaskControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<DroneTaskControl-response> is deprecated: use dji_sdk-srv:DroneTaskControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DroneTaskControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <DroneTaskControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <DroneTaskControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <DroneTaskControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneTaskControl-response>) ostream)
  "Serializes a message object of type '<DroneTaskControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneTaskControl-response>) istream)
  "Deserializes a message object of type '<DroneTaskControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneTaskControl-response>)))
  "Returns string type for a service object of type '<DroneTaskControl-response>"
  "dji_sdk/DroneTaskControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneTaskControl-response)))
  "Returns string type for a service object of type 'DroneTaskControl-response"
  "dji_sdk/DroneTaskControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneTaskControl-response>)))
  "Returns md5sum for a message object of type '<DroneTaskControl-response>"
  "ab91c4042653ca6868c5907bf22e4741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneTaskControl-response)))
  "Returns md5sum for a message object of type 'DroneTaskControl-response"
  "ab91c4042653ca6868c5907bf22e4741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneTaskControl-response>)))
  "Returns full string definition for message of type '<DroneTaskControl-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneTaskControl-response)))
  "Returns full string definition for message of type 'DroneTaskControl-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneTaskControl-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneTaskControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneTaskControl-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DroneTaskControl)))
  'DroneTaskControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DroneTaskControl)))
  'DroneTaskControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneTaskControl)))
  "Returns string type for a service object of type '<DroneTaskControl>"
  "dji_sdk/DroneTaskControl")