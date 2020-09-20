; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude StereoDepthSubscription-request.msg.html

(cl:defclass <StereoDepthSubscription-request> (roslisp-msg-protocol:ros-message)
  ((front_depth_240p
    :reader front_depth_240p
    :initarg :front_depth_240p
    :type cl:fixnum
    :initform 0)
   (unsubscribe_240p
    :reader unsubscribe_240p
    :initarg :unsubscribe_240p
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StereoDepthSubscription-request (<StereoDepthSubscription-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoDepthSubscription-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoDepthSubscription-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<StereoDepthSubscription-request> is deprecated: use dji_sdk-srv:StereoDepthSubscription-request instead.")))

(cl:ensure-generic-function 'front_depth_240p-val :lambda-list '(m))
(cl:defmethod front_depth_240p-val ((m <StereoDepthSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:front_depth_240p-val is deprecated.  Use dji_sdk-srv:front_depth_240p instead.")
  (front_depth_240p m))

(cl:ensure-generic-function 'unsubscribe_240p-val :lambda-list '(m))
(cl:defmethod unsubscribe_240p-val ((m <StereoDepthSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:unsubscribe_240p-val is deprecated.  Use dji_sdk-srv:unsubscribe_240p instead.")
  (unsubscribe_240p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoDepthSubscription-request>) ostream)
  "Serializes a message object of type '<StereoDepthSubscription-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_depth_240p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsubscribe_240p)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoDepthSubscription-request>) istream)
  "Deserializes a message object of type '<StereoDepthSubscription-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_depth_240p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsubscribe_240p)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoDepthSubscription-request>)))
  "Returns string type for a service object of type '<StereoDepthSubscription-request>"
  "dji_sdk/StereoDepthSubscriptionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoDepthSubscription-request)))
  "Returns string type for a service object of type 'StereoDepthSubscription-request"
  "dji_sdk/StereoDepthSubscriptionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoDepthSubscription-request>)))
  "Returns md5sum for a message object of type '<StereoDepthSubscription-request>"
  "6da41f0fc9c34988dbd56e6a11bddfdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoDepthSubscription-request)))
  "Returns md5sum for a message object of type 'StereoDepthSubscription-request"
  "6da41f0fc9c34988dbd56e6a11bddfdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoDepthSubscription-request>)))
  "Returns full string definition for message of type '<StereoDepthSubscription-request>"
  (cl:format cl:nil "~%uint8 front_depth_240p~%~%~%~%uint8 unsubscribe_240p~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoDepthSubscription-request)))
  "Returns full string definition for message of type 'StereoDepthSubscription-request"
  (cl:format cl:nil "~%uint8 front_depth_240p~%~%~%~%uint8 unsubscribe_240p~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoDepthSubscription-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoDepthSubscription-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoDepthSubscription-request
    (cl:cons ':front_depth_240p (front_depth_240p msg))
    (cl:cons ':unsubscribe_240p (unsubscribe_240p msg))
))
;//! \htmlinclude StereoDepthSubscription-response.msg.html

(cl:defclass <StereoDepthSubscription-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StereoDepthSubscription-response (<StereoDepthSubscription-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoDepthSubscription-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoDepthSubscription-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<StereoDepthSubscription-response> is deprecated: use dji_sdk-srv:StereoDepthSubscription-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StereoDepthSubscription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoDepthSubscription-response>) ostream)
  "Serializes a message object of type '<StereoDepthSubscription-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoDepthSubscription-response>) istream)
  "Deserializes a message object of type '<StereoDepthSubscription-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoDepthSubscription-response>)))
  "Returns string type for a service object of type '<StereoDepthSubscription-response>"
  "dji_sdk/StereoDepthSubscriptionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoDepthSubscription-response)))
  "Returns string type for a service object of type 'StereoDepthSubscription-response"
  "dji_sdk/StereoDepthSubscriptionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoDepthSubscription-response>)))
  "Returns md5sum for a message object of type '<StereoDepthSubscription-response>"
  "6da41f0fc9c34988dbd56e6a11bddfdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoDepthSubscription-response)))
  "Returns md5sum for a message object of type 'StereoDepthSubscription-response"
  "6da41f0fc9c34988dbd56e6a11bddfdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoDepthSubscription-response>)))
  "Returns full string definition for message of type '<StereoDepthSubscription-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoDepthSubscription-response)))
  "Returns full string definition for message of type 'StereoDepthSubscription-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoDepthSubscription-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoDepthSubscription-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoDepthSubscription-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StereoDepthSubscription)))
  'StereoDepthSubscription-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StereoDepthSubscription)))
  'StereoDepthSubscription-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoDepthSubscription)))
  "Returns string type for a service object of type '<StereoDepthSubscription>"
  "dji_sdk/StereoDepthSubscription")