; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SetHardSync-request.msg.html

(cl:defclass <SetHardSync-request> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type cl:integer
    :initform 0)
   (tag
    :reader tag
    :initarg :tag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetHardSync-request (<SetHardSync-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHardSync-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHardSync-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SetHardSync-request> is deprecated: use dji_sdk-srv:SetHardSync-request instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <SetHardSync-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:frequency-val is deprecated.  Use dji_sdk-srv:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <SetHardSync-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:tag-val is deprecated.  Use dji_sdk-srv:tag instead.")
  (tag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHardSync-request>) ostream)
  "Serializes a message object of type '<SetHardSync-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHardSync-request>) istream)
  "Deserializes a message object of type '<SetHardSync-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHardSync-request>)))
  "Returns string type for a service object of type '<SetHardSync-request>"
  "dji_sdk/SetHardSyncRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHardSync-request)))
  "Returns string type for a service object of type 'SetHardSync-request"
  "dji_sdk/SetHardSyncRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHardSync-request>)))
  "Returns md5sum for a message object of type '<SetHardSync-request>"
  "11e826f14456b3511264f6a734868e08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHardSync-request)))
  "Returns md5sum for a message object of type 'SetHardSync-request"
  "11e826f14456b3511264f6a734868e08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHardSync-request>)))
  "Returns full string definition for message of type '<SetHardSync-request>"
  (cl:format cl:nil "uint32 frequency~%uint16 tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHardSync-request)))
  "Returns full string definition for message of type 'SetHardSync-request"
  (cl:format cl:nil "uint32 frequency~%uint16 tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHardSync-request>))
  (cl:+ 0
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHardSync-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHardSync-request
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':tag (tag msg))
))
;//! \htmlinclude SetHardSync-response.msg.html

(cl:defclass <SetHardSync-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetHardSync-response (<SetHardSync-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHardSync-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHardSync-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SetHardSync-response> is deprecated: use dji_sdk-srv:SetHardSync-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetHardSync-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHardSync-response>) ostream)
  "Serializes a message object of type '<SetHardSync-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHardSync-response>) istream)
  "Deserializes a message object of type '<SetHardSync-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHardSync-response>)))
  "Returns string type for a service object of type '<SetHardSync-response>"
  "dji_sdk/SetHardSyncResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHardSync-response)))
  "Returns string type for a service object of type 'SetHardSync-response"
  "dji_sdk/SetHardSyncResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHardSync-response>)))
  "Returns md5sum for a message object of type '<SetHardSync-response>"
  "11e826f14456b3511264f6a734868e08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHardSync-response)))
  "Returns md5sum for a message object of type 'SetHardSync-response"
  "11e826f14456b3511264f6a734868e08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHardSync-response>)))
  "Returns full string definition for message of type '<SetHardSync-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHardSync-response)))
  "Returns full string definition for message of type 'SetHardSync-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHardSync-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHardSync-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHardSync-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetHardSync)))
  'SetHardSync-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetHardSync)))
  'SetHardSync-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHardSync)))
  "Returns string type for a service object of type '<SetHardSync>"
  "dji_sdk/SetHardSync")