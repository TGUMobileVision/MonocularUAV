; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SetLocalPosRef-request.msg.html

(cl:defclass <SetLocalPosRef-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLocalPosRef-request (<SetLocalPosRef-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLocalPosRef-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLocalPosRef-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SetLocalPosRef-request> is deprecated: use dji_sdk-srv:SetLocalPosRef-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLocalPosRef-request>) ostream)
  "Serializes a message object of type '<SetLocalPosRef-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLocalPosRef-request>) istream)
  "Deserializes a message object of type '<SetLocalPosRef-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLocalPosRef-request>)))
  "Returns string type for a service object of type '<SetLocalPosRef-request>"
  "dji_sdk/SetLocalPosRefRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocalPosRef-request)))
  "Returns string type for a service object of type 'SetLocalPosRef-request"
  "dji_sdk/SetLocalPosRefRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLocalPosRef-request>)))
  "Returns md5sum for a message object of type '<SetLocalPosRef-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLocalPosRef-request)))
  "Returns md5sum for a message object of type 'SetLocalPosRef-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLocalPosRef-request>)))
  "Returns full string definition for message of type '<SetLocalPosRef-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLocalPosRef-request)))
  "Returns full string definition for message of type 'SetLocalPosRef-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLocalPosRef-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLocalPosRef-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLocalPosRef-request
))
;//! \htmlinclude SetLocalPosRef-response.msg.html

(cl:defclass <SetLocalPosRef-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLocalPosRef-response (<SetLocalPosRef-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLocalPosRef-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLocalPosRef-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SetLocalPosRef-response> is deprecated: use dji_sdk-srv:SetLocalPosRef-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetLocalPosRef-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLocalPosRef-response>) ostream)
  "Serializes a message object of type '<SetLocalPosRef-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLocalPosRef-response>) istream)
  "Deserializes a message object of type '<SetLocalPosRef-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLocalPosRef-response>)))
  "Returns string type for a service object of type '<SetLocalPosRef-response>"
  "dji_sdk/SetLocalPosRefResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocalPosRef-response)))
  "Returns string type for a service object of type 'SetLocalPosRef-response"
  "dji_sdk/SetLocalPosRefResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLocalPosRef-response>)))
  "Returns md5sum for a message object of type '<SetLocalPosRef-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLocalPosRef-response)))
  "Returns md5sum for a message object of type 'SetLocalPosRef-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLocalPosRef-response>)))
  "Returns full string definition for message of type '<SetLocalPosRef-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLocalPosRef-response)))
  "Returns full string definition for message of type 'SetLocalPosRef-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLocalPosRef-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLocalPosRef-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLocalPosRef-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLocalPosRef)))
  'SetLocalPosRef-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLocalPosRef)))
  'SetLocalPosRef-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLocalPosRef)))
  "Returns string type for a service object of type '<SetLocalPosRef>"
  "dji_sdk/SetLocalPosRef")