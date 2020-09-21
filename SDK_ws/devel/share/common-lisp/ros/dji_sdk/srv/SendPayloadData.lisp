; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SendPayloadData-request.msg.html

(cl:defclass <SendPayloadData-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SendPayloadData-request (<SendPayloadData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendPayloadData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendPayloadData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SendPayloadData-request> is deprecated: use dji_sdk-srv:SendPayloadData-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SendPayloadData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:data-val is deprecated.  Use dji_sdk-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendPayloadData-request>) ostream)
  "Serializes a message object of type '<SendPayloadData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendPayloadData-request>) istream)
  "Deserializes a message object of type '<SendPayloadData-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendPayloadData-request>)))
  "Returns string type for a service object of type '<SendPayloadData-request>"
  "dji_sdk/SendPayloadDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendPayloadData-request)))
  "Returns string type for a service object of type 'SendPayloadData-request"
  "dji_sdk/SendPayloadDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendPayloadData-request>)))
  "Returns md5sum for a message object of type '<SendPayloadData-request>"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendPayloadData-request)))
  "Returns md5sum for a message object of type 'SendPayloadData-request"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendPayloadData-request>)))
  "Returns full string definition for message of type '<SendPayloadData-request>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendPayloadData-request)))
  "Returns full string definition for message of type 'SendPayloadData-request"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendPayloadData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendPayloadData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendPayloadData-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SendPayloadData-response.msg.html

(cl:defclass <SendPayloadData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendPayloadData-response (<SendPayloadData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendPayloadData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendPayloadData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SendPayloadData-response> is deprecated: use dji_sdk-srv:SendPayloadData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SendPayloadData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendPayloadData-response>) ostream)
  "Serializes a message object of type '<SendPayloadData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendPayloadData-response>) istream)
  "Deserializes a message object of type '<SendPayloadData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendPayloadData-response>)))
  "Returns string type for a service object of type '<SendPayloadData-response>"
  "dji_sdk/SendPayloadDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendPayloadData-response)))
  "Returns string type for a service object of type 'SendPayloadData-response"
  "dji_sdk/SendPayloadDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendPayloadData-response>)))
  "Returns md5sum for a message object of type '<SendPayloadData-response>"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendPayloadData-response)))
  "Returns md5sum for a message object of type 'SendPayloadData-response"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendPayloadData-response>)))
  "Returns full string definition for message of type '<SendPayloadData-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendPayloadData-response)))
  "Returns full string definition for message of type 'SendPayloadData-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendPayloadData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendPayloadData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendPayloadData-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendPayloadData)))
  'SendPayloadData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendPayloadData)))
  'SendPayloadData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendPayloadData)))
  "Returns string type for a service object of type '<SendPayloadData>"
  "dji_sdk/SendPayloadData")