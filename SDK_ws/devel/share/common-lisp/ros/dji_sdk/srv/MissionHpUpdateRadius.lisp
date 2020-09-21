; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpUpdateRadius-request.msg.html

(cl:defclass <MissionHpUpdateRadius-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionHpUpdateRadius-request (<MissionHpUpdateRadius-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpdateRadius-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpdateRadius-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpdateRadius-request> is deprecated: use dji_sdk-srv:MissionHpUpdateRadius-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <MissionHpUpdateRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:radius-val is deprecated.  Use dji_sdk-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpdateRadius-request>) ostream)
  "Serializes a message object of type '<MissionHpUpdateRadius-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpdateRadius-request>) istream)
  "Deserializes a message object of type '<MissionHpUpdateRadius-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpdateRadius-request>)))
  "Returns string type for a service object of type '<MissionHpUpdateRadius-request>"
  "dji_sdk/MissionHpUpdateRadiusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpdateRadius-request)))
  "Returns string type for a service object of type 'MissionHpUpdateRadius-request"
  "dji_sdk/MissionHpUpdateRadiusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpdateRadius-request>)))
  "Returns md5sum for a message object of type '<MissionHpUpdateRadius-request>"
  "a73ee6c10e003f74ced091fcaa0531af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpdateRadius-request)))
  "Returns md5sum for a message object of type 'MissionHpUpdateRadius-request"
  "a73ee6c10e003f74ced091fcaa0531af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpdateRadius-request>)))
  "Returns full string definition for message of type '<MissionHpUpdateRadius-request>"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpdateRadius-request)))
  "Returns full string definition for message of type 'MissionHpUpdateRadius-request"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpdateRadius-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpdateRadius-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpdateRadius-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude MissionHpUpdateRadius-response.msg.html

(cl:defclass <MissionHpUpdateRadius-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MissionHpUpdateRadius-response (<MissionHpUpdateRadius-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpdateRadius-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpdateRadius-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpdateRadius-response> is deprecated: use dji_sdk-srv:MissionHpUpdateRadius-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpUpdateRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionHpUpdateRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionHpUpdateRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionHpUpdateRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpdateRadius-response>) ostream)
  "Serializes a message object of type '<MissionHpUpdateRadius-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpdateRadius-response>) istream)
  "Deserializes a message object of type '<MissionHpUpdateRadius-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpdateRadius-response>)))
  "Returns string type for a service object of type '<MissionHpUpdateRadius-response>"
  "dji_sdk/MissionHpUpdateRadiusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpdateRadius-response)))
  "Returns string type for a service object of type 'MissionHpUpdateRadius-response"
  "dji_sdk/MissionHpUpdateRadiusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpdateRadius-response>)))
  "Returns md5sum for a message object of type '<MissionHpUpdateRadius-response>"
  "a73ee6c10e003f74ced091fcaa0531af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpdateRadius-response)))
  "Returns md5sum for a message object of type 'MissionHpUpdateRadius-response"
  "a73ee6c10e003f74ced091fcaa0531af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpdateRadius-response>)))
  "Returns full string definition for message of type '<MissionHpUpdateRadius-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpdateRadius-response)))
  "Returns full string definition for message of type 'MissionHpUpdateRadius-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpdateRadius-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpdateRadius-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpdateRadius-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpUpdateRadius)))
  'MissionHpUpdateRadius-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpUpdateRadius)))
  'MissionHpUpdateRadius-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpdateRadius)))
  "Returns string type for a service object of type '<MissionHpUpdateRadius>"
  "dji_sdk/MissionHpUpdateRadius")