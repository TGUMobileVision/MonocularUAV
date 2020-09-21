; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpUpdateYawRate-request.msg.html

(cl:defclass <MissionHpUpdateYawRate-request> (roslisp-msg-protocol:ros-message)
  ((yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionHpUpdateYawRate-request (<MissionHpUpdateYawRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpdateYawRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpdateYawRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpdateYawRate-request> is deprecated: use dji_sdk-srv:MissionHpUpdateYawRate-request instead.")))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <MissionHpUpdateYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw_rate-val is deprecated.  Use dji_sdk-srv:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <MissionHpUpdateYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:direction-val is deprecated.  Use dji_sdk-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpdateYawRate-request>) ostream)
  "Serializes a message object of type '<MissionHpUpdateYawRate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpdateYawRate-request>) istream)
  "Deserializes a message object of type '<MissionHpUpdateYawRate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpdateYawRate-request>)))
  "Returns string type for a service object of type '<MissionHpUpdateYawRate-request>"
  "dji_sdk/MissionHpUpdateYawRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpdateYawRate-request)))
  "Returns string type for a service object of type 'MissionHpUpdateYawRate-request"
  "dji_sdk/MissionHpUpdateYawRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpdateYawRate-request>)))
  "Returns md5sum for a message object of type '<MissionHpUpdateYawRate-request>"
  "e4b46552667899a74d58ef421a1fe415")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpdateYawRate-request)))
  "Returns md5sum for a message object of type 'MissionHpUpdateYawRate-request"
  "e4b46552667899a74d58ef421a1fe415")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpdateYawRate-request>)))
  "Returns full string definition for message of type '<MissionHpUpdateYawRate-request>"
  (cl:format cl:nil "float32 yaw_rate~%uint8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpdateYawRate-request)))
  "Returns full string definition for message of type 'MissionHpUpdateYawRate-request"
  (cl:format cl:nil "float32 yaw_rate~%uint8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpdateYawRate-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpdateYawRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpdateYawRate-request
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude MissionHpUpdateYawRate-response.msg.html

(cl:defclass <MissionHpUpdateYawRate-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MissionHpUpdateYawRate-response (<MissionHpUpdateYawRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpdateYawRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpdateYawRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpdateYawRate-response> is deprecated: use dji_sdk-srv:MissionHpUpdateYawRate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpUpdateYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionHpUpdateYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionHpUpdateYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionHpUpdateYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpdateYawRate-response>) ostream)
  "Serializes a message object of type '<MissionHpUpdateYawRate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpdateYawRate-response>) istream)
  "Deserializes a message object of type '<MissionHpUpdateYawRate-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpdateYawRate-response>)))
  "Returns string type for a service object of type '<MissionHpUpdateYawRate-response>"
  "dji_sdk/MissionHpUpdateYawRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpdateYawRate-response)))
  "Returns string type for a service object of type 'MissionHpUpdateYawRate-response"
  "dji_sdk/MissionHpUpdateYawRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpdateYawRate-response>)))
  "Returns md5sum for a message object of type '<MissionHpUpdateYawRate-response>"
  "e4b46552667899a74d58ef421a1fe415")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpdateYawRate-response)))
  "Returns md5sum for a message object of type 'MissionHpUpdateYawRate-response"
  "e4b46552667899a74d58ef421a1fe415")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpdateYawRate-response>)))
  "Returns full string definition for message of type '<MissionHpUpdateYawRate-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpdateYawRate-response)))
  "Returns full string definition for message of type 'MissionHpUpdateYawRate-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpdateYawRate-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpdateYawRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpdateYawRate-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpUpdateYawRate)))
  'MissionHpUpdateYawRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpUpdateYawRate)))
  'MissionHpUpdateYawRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpdateYawRate)))
  "Returns string type for a service object of type '<MissionHpUpdateYawRate>"
  "dji_sdk/MissionHpUpdateYawRate")