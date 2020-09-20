; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpGetSpeed-request.msg.html

(cl:defclass <MissionWpGetSpeed-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionWpGetSpeed-request (<MissionWpGetSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpGetSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpGetSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpGetSpeed-request> is deprecated: use dji_sdk-srv:MissionWpGetSpeed-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpGetSpeed-request>) ostream)
  "Serializes a message object of type '<MissionWpGetSpeed-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpGetSpeed-request>) istream)
  "Deserializes a message object of type '<MissionWpGetSpeed-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpGetSpeed-request>)))
  "Returns string type for a service object of type '<MissionWpGetSpeed-request>"
  "dji_sdk/MissionWpGetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetSpeed-request)))
  "Returns string type for a service object of type 'MissionWpGetSpeed-request"
  "dji_sdk/MissionWpGetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpGetSpeed-request>)))
  "Returns md5sum for a message object of type '<MissionWpGetSpeed-request>"
  "24b8cc8834f9763e3d1c641b02dfffb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpGetSpeed-request)))
  "Returns md5sum for a message object of type 'MissionWpGetSpeed-request"
  "24b8cc8834f9763e3d1c641b02dfffb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpGetSpeed-request>)))
  "Returns full string definition for message of type '<MissionWpGetSpeed-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpGetSpeed-request)))
  "Returns full string definition for message of type 'MissionWpGetSpeed-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpGetSpeed-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpGetSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpGetSpeed-request
))
;//! \htmlinclude MissionWpGetSpeed-response.msg.html

(cl:defclass <MissionWpGetSpeed-response> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
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

(cl:defclass MissionWpGetSpeed-response (<MissionWpGetSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpGetSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpGetSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpGetSpeed-response> is deprecated: use dji_sdk-srv:MissionWpGetSpeed-response instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MissionWpGetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:speed-val is deprecated.  Use dji_sdk-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionWpGetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionWpGetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionWpGetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpGetSpeed-response>) ostream)
  "Serializes a message object of type '<MissionWpGetSpeed-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpGetSpeed-response>) istream)
  "Deserializes a message object of type '<MissionWpGetSpeed-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpGetSpeed-response>)))
  "Returns string type for a service object of type '<MissionWpGetSpeed-response>"
  "dji_sdk/MissionWpGetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetSpeed-response)))
  "Returns string type for a service object of type 'MissionWpGetSpeed-response"
  "dji_sdk/MissionWpGetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpGetSpeed-response>)))
  "Returns md5sum for a message object of type '<MissionWpGetSpeed-response>"
  "24b8cc8834f9763e3d1c641b02dfffb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpGetSpeed-response)))
  "Returns md5sum for a message object of type 'MissionWpGetSpeed-response"
  "24b8cc8834f9763e3d1c641b02dfffb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpGetSpeed-response>)))
  "Returns full string definition for message of type '<MissionWpGetSpeed-response>"
  (cl:format cl:nil "float32 speed~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpGetSpeed-response)))
  "Returns full string definition for message of type 'MissionWpGetSpeed-response"
  (cl:format cl:nil "float32 speed~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpGetSpeed-response>))
  (cl:+ 0
     4
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpGetSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpGetSpeed-response
    (cl:cons ':speed (speed msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpGetSpeed)))
  'MissionWpGetSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpGetSpeed)))
  'MissionWpGetSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetSpeed)))
  "Returns string type for a service object of type '<MissionWpGetSpeed>"
  "dji_sdk/MissionWpGetSpeed")