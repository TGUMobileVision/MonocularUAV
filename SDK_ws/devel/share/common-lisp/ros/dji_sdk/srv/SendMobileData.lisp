; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SendMobileData-request.msg.html

(cl:defclass <SendMobileData-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SendMobileData-request (<SendMobileData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendMobileData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendMobileData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SendMobileData-request> is deprecated: use dji_sdk-srv:SendMobileData-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SendMobileData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:data-val is deprecated.  Use dji_sdk-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendMobileData-request>) ostream)
  "Serializes a message object of type '<SendMobileData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendMobileData-request>) istream)
  "Deserializes a message object of type '<SendMobileData-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendMobileData-request>)))
  "Returns string type for a service object of type '<SendMobileData-request>"
  "dji_sdk/SendMobileDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMobileData-request)))
  "Returns string type for a service object of type 'SendMobileData-request"
  "dji_sdk/SendMobileDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendMobileData-request>)))
  "Returns md5sum for a message object of type '<SendMobileData-request>"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendMobileData-request)))
  "Returns md5sum for a message object of type 'SendMobileData-request"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendMobileData-request>)))
  "Returns full string definition for message of type '<SendMobileData-request>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendMobileData-request)))
  "Returns full string definition for message of type 'SendMobileData-request"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendMobileData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendMobileData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendMobileData-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SendMobileData-response.msg.html

(cl:defclass <SendMobileData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendMobileData-response (<SendMobileData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendMobileData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendMobileData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SendMobileData-response> is deprecated: use dji_sdk-srv:SendMobileData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SendMobileData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendMobileData-response>) ostream)
  "Serializes a message object of type '<SendMobileData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendMobileData-response>) istream)
  "Deserializes a message object of type '<SendMobileData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendMobileData-response>)))
  "Returns string type for a service object of type '<SendMobileData-response>"
  "dji_sdk/SendMobileDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMobileData-response)))
  "Returns string type for a service object of type 'SendMobileData-response"
  "dji_sdk/SendMobileDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendMobileData-response>)))
  "Returns md5sum for a message object of type '<SendMobileData-response>"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendMobileData-response)))
  "Returns md5sum for a message object of type 'SendMobileData-response"
  "1c25dff3462ed6a8f6df1c148c7b6a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendMobileData-response>)))
  "Returns full string definition for message of type '<SendMobileData-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendMobileData-response)))
  "Returns full string definition for message of type 'SendMobileData-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendMobileData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendMobileData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendMobileData-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendMobileData)))
  'SendMobileData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendMobileData)))
  'SendMobileData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendMobileData)))
  "Returns string type for a service object of type '<SendMobileData>"
  "dji_sdk/SendMobileData")