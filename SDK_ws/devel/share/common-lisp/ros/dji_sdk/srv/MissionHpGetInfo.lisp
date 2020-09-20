; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpGetInfo-request.msg.html

(cl:defclass <MissionHpGetInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionHpGetInfo-request (<MissionHpGetInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpGetInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpGetInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpGetInfo-request> is deprecated: use dji_sdk-srv:MissionHpGetInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpGetInfo-request>) ostream)
  "Serializes a message object of type '<MissionHpGetInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpGetInfo-request>) istream)
  "Deserializes a message object of type '<MissionHpGetInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpGetInfo-request>)))
  "Returns string type for a service object of type '<MissionHpGetInfo-request>"
  "dji_sdk/MissionHpGetInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpGetInfo-request)))
  "Returns string type for a service object of type 'MissionHpGetInfo-request"
  "dji_sdk/MissionHpGetInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpGetInfo-request>)))
  "Returns md5sum for a message object of type '<MissionHpGetInfo-request>"
  "8c08f93488e030961f6001dc630fd2c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpGetInfo-request)))
  "Returns md5sum for a message object of type 'MissionHpGetInfo-request"
  "8c08f93488e030961f6001dc630fd2c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpGetInfo-request>)))
  "Returns full string definition for message of type '<MissionHpGetInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpGetInfo-request)))
  "Returns full string definition for message of type 'MissionHpGetInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpGetInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpGetInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpGetInfo-request
))
;//! \htmlinclude MissionHpGetInfo-response.msg.html

(cl:defclass <MissionHpGetInfo-response> (roslisp-msg-protocol:ros-message)
  ((hotpoint_task
    :reader hotpoint_task
    :initarg :hotpoint_task
    :type dji_sdk-msg:MissionHotpointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionHotpointTask))
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

(cl:defclass MissionHpGetInfo-response (<MissionHpGetInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpGetInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpGetInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpGetInfo-response> is deprecated: use dji_sdk-srv:MissionHpGetInfo-response instead.")))

(cl:ensure-generic-function 'hotpoint_task-val :lambda-list '(m))
(cl:defmethod hotpoint_task-val ((m <MissionHpGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:hotpoint_task-val is deprecated.  Use dji_sdk-srv:hotpoint_task instead.")
  (hotpoint_task m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionHpGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionHpGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionHpGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpGetInfo-response>) ostream)
  "Serializes a message object of type '<MissionHpGetInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hotpoint_task) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpGetInfo-response>) istream)
  "Deserializes a message object of type '<MissionHpGetInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hotpoint_task) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpGetInfo-response>)))
  "Returns string type for a service object of type '<MissionHpGetInfo-response>"
  "dji_sdk/MissionHpGetInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpGetInfo-response)))
  "Returns string type for a service object of type 'MissionHpGetInfo-response"
  "dji_sdk/MissionHpGetInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpGetInfo-response>)))
  "Returns md5sum for a message object of type '<MissionHpGetInfo-response>"
  "8c08f93488e030961f6001dc630fd2c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpGetInfo-response)))
  "Returns md5sum for a message object of type 'MissionHpGetInfo-response"
  "8c08f93488e030961f6001dc630fd2c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpGetInfo-response>)))
  "Returns full string definition for message of type '<MissionHpGetInfo-response>"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude  # degree~%float64 longitude # degree~%float64 altitude  # meter~%float64 radius    # meter~%float32 angular_speed #deg/s~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpGetInfo-response)))
  "Returns full string definition for message of type 'MissionHpGetInfo-response"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude  # degree~%float64 longitude # degree~%float64 altitude  # meter~%float64 radius    # meter~%float32 angular_speed #deg/s~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpGetInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hotpoint_task))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpGetInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpGetInfo-response
    (cl:cons ':hotpoint_task (hotpoint_task msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpGetInfo)))
  'MissionHpGetInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpGetInfo)))
  'MissionHpGetInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpGetInfo)))
  "Returns string type for a service object of type '<MissionHpGetInfo>"
  "dji_sdk/MissionHpGetInfo")