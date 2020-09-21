; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpUpload-request.msg.html

(cl:defclass <MissionHpUpload-request> (roslisp-msg-protocol:ros-message)
  ((hotpoint_task
    :reader hotpoint_task
    :initarg :hotpoint_task
    :type dji_sdk-msg:MissionHotpointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionHotpointTask)))
)

(cl:defclass MissionHpUpload-request (<MissionHpUpload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpload-request> is deprecated: use dji_sdk-srv:MissionHpUpload-request instead.")))

(cl:ensure-generic-function 'hotpoint_task-val :lambda-list '(m))
(cl:defmethod hotpoint_task-val ((m <MissionHpUpload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:hotpoint_task-val is deprecated.  Use dji_sdk-srv:hotpoint_task instead.")
  (hotpoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpload-request>) ostream)
  "Serializes a message object of type '<MissionHpUpload-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hotpoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpload-request>) istream)
  "Deserializes a message object of type '<MissionHpUpload-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hotpoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpload-request>)))
  "Returns string type for a service object of type '<MissionHpUpload-request>"
  "dji_sdk/MissionHpUploadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpload-request)))
  "Returns string type for a service object of type 'MissionHpUpload-request"
  "dji_sdk/MissionHpUploadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpload-request>)))
  "Returns md5sum for a message object of type '<MissionHpUpload-request>"
  "af658341aaed3be3d18e0bcbefcd2cd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpload-request)))
  "Returns md5sum for a message object of type 'MissionHpUpload-request"
  "af658341aaed3be3d18e0bcbefcd2cd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpload-request>)))
  "Returns full string definition for message of type '<MissionHpUpload-request>"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude  # degree~%float64 longitude # degree~%float64 altitude  # meter~%float64 radius    # meter~%float32 angular_speed #deg/s~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpload-request)))
  "Returns full string definition for message of type 'MissionHpUpload-request"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude  # degree~%float64 longitude # degree~%float64 altitude  # meter~%float64 radius    # meter~%float32 angular_speed #deg/s~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpload-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hotpoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpload-request
    (cl:cons ':hotpoint_task (hotpoint_task msg))
))
;//! \htmlinclude MissionHpUpload-response.msg.html

(cl:defclass <MissionHpUpload-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MissionHpUpload-response (<MissionHpUpload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpload-response> is deprecated: use dji_sdk-srv:MissionHpUpload-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionHpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionHpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionHpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpload-response>) ostream)
  "Serializes a message object of type '<MissionHpUpload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpload-response>) istream)
  "Deserializes a message object of type '<MissionHpUpload-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpload-response>)))
  "Returns string type for a service object of type '<MissionHpUpload-response>"
  "dji_sdk/MissionHpUploadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpload-response)))
  "Returns string type for a service object of type 'MissionHpUpload-response"
  "dji_sdk/MissionHpUploadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpload-response>)))
  "Returns md5sum for a message object of type '<MissionHpUpload-response>"
  "af658341aaed3be3d18e0bcbefcd2cd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpload-response)))
  "Returns md5sum for a message object of type 'MissionHpUpload-response"
  "af658341aaed3be3d18e0bcbefcd2cd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpload-response>)))
  "Returns full string definition for message of type '<MissionHpUpload-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpload-response)))
  "Returns full string definition for message of type 'MissionHpUpload-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpload-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpload-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpUpload)))
  'MissionHpUpload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpUpload)))
  'MissionHpUpload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpload)))
  "Returns string type for a service object of type '<MissionHpUpload>"
  "dji_sdk/MissionHpUpload")