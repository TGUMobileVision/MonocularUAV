; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude Stereo240pSubscription-request.msg.html

(cl:defclass <Stereo240pSubscription-request> (roslisp-msg-protocol:ros-message)
  ((front_right_240p
    :reader front_right_240p
    :initarg :front_right_240p
    :type cl:fixnum
    :initform 0)
   (front_left_240p
    :reader front_left_240p
    :initarg :front_left_240p
    :type cl:fixnum
    :initform 0)
   (down_front_240p
    :reader down_front_240p
    :initarg :down_front_240p
    :type cl:fixnum
    :initform 0)
   (down_back_240p
    :reader down_back_240p
    :initarg :down_back_240p
    :type cl:fixnum
    :initform 0)
   (unsubscribe_240p
    :reader unsubscribe_240p
    :initarg :unsubscribe_240p
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Stereo240pSubscription-request (<Stereo240pSubscription-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stereo240pSubscription-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stereo240pSubscription-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<Stereo240pSubscription-request> is deprecated: use dji_sdk-srv:Stereo240pSubscription-request instead.")))

(cl:ensure-generic-function 'front_right_240p-val :lambda-list '(m))
(cl:defmethod front_right_240p-val ((m <Stereo240pSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:front_right_240p-val is deprecated.  Use dji_sdk-srv:front_right_240p instead.")
  (front_right_240p m))

(cl:ensure-generic-function 'front_left_240p-val :lambda-list '(m))
(cl:defmethod front_left_240p-val ((m <Stereo240pSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:front_left_240p-val is deprecated.  Use dji_sdk-srv:front_left_240p instead.")
  (front_left_240p m))

(cl:ensure-generic-function 'down_front_240p-val :lambda-list '(m))
(cl:defmethod down_front_240p-val ((m <Stereo240pSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:down_front_240p-val is deprecated.  Use dji_sdk-srv:down_front_240p instead.")
  (down_front_240p m))

(cl:ensure-generic-function 'down_back_240p-val :lambda-list '(m))
(cl:defmethod down_back_240p-val ((m <Stereo240pSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:down_back_240p-val is deprecated.  Use dji_sdk-srv:down_back_240p instead.")
  (down_back_240p m))

(cl:ensure-generic-function 'unsubscribe_240p-val :lambda-list '(m))
(cl:defmethod unsubscribe_240p-val ((m <Stereo240pSubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:unsubscribe_240p-val is deprecated.  Use dji_sdk-srv:unsubscribe_240p instead.")
  (unsubscribe_240p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stereo240pSubscription-request>) ostream)
  "Serializes a message object of type '<Stereo240pSubscription-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right_240p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left_240p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'down_front_240p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'down_back_240p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsubscribe_240p)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stereo240pSubscription-request>) istream)
  "Deserializes a message object of type '<Stereo240pSubscription-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right_240p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left_240p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'down_front_240p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'down_back_240p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsubscribe_240p)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stereo240pSubscription-request>)))
  "Returns string type for a service object of type '<Stereo240pSubscription-request>"
  "dji_sdk/Stereo240pSubscriptionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stereo240pSubscription-request)))
  "Returns string type for a service object of type 'Stereo240pSubscription-request"
  "dji_sdk/Stereo240pSubscriptionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stereo240pSubscription-request>)))
  "Returns md5sum for a message object of type '<Stereo240pSubscription-request>"
  "c1205f3b01904555b852bb2bc5881da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stereo240pSubscription-request)))
  "Returns md5sum for a message object of type 'Stereo240pSubscription-request"
  "c1205f3b01904555b852bb2bc5881da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stereo240pSubscription-request>)))
  "Returns full string definition for message of type '<Stereo240pSubscription-request>"
  (cl:format cl:nil "~%uint8 front_right_240p~%uint8 front_left_240p~%uint8 down_front_240p~%uint8 down_back_240p~%~%~%~%uint8 unsubscribe_240p~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stereo240pSubscription-request)))
  "Returns full string definition for message of type 'Stereo240pSubscription-request"
  (cl:format cl:nil "~%uint8 front_right_240p~%uint8 front_left_240p~%uint8 down_front_240p~%uint8 down_back_240p~%~%~%~%uint8 unsubscribe_240p~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stereo240pSubscription-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stereo240pSubscription-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Stereo240pSubscription-request
    (cl:cons ':front_right_240p (front_right_240p msg))
    (cl:cons ':front_left_240p (front_left_240p msg))
    (cl:cons ':down_front_240p (down_front_240p msg))
    (cl:cons ':down_back_240p (down_back_240p msg))
    (cl:cons ':unsubscribe_240p (unsubscribe_240p msg))
))
;//! \htmlinclude Stereo240pSubscription-response.msg.html

(cl:defclass <Stereo240pSubscription-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Stereo240pSubscription-response (<Stereo240pSubscription-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stereo240pSubscription-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stereo240pSubscription-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<Stereo240pSubscription-response> is deprecated: use dji_sdk-srv:Stereo240pSubscription-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Stereo240pSubscription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stereo240pSubscription-response>) ostream)
  "Serializes a message object of type '<Stereo240pSubscription-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stereo240pSubscription-response>) istream)
  "Deserializes a message object of type '<Stereo240pSubscription-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stereo240pSubscription-response>)))
  "Returns string type for a service object of type '<Stereo240pSubscription-response>"
  "dji_sdk/Stereo240pSubscriptionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stereo240pSubscription-response)))
  "Returns string type for a service object of type 'Stereo240pSubscription-response"
  "dji_sdk/Stereo240pSubscriptionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stereo240pSubscription-response>)))
  "Returns md5sum for a message object of type '<Stereo240pSubscription-response>"
  "c1205f3b01904555b852bb2bc5881da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stereo240pSubscription-response)))
  "Returns md5sum for a message object of type 'Stereo240pSubscription-response"
  "c1205f3b01904555b852bb2bc5881da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stereo240pSubscription-response>)))
  "Returns full string definition for message of type '<Stereo240pSubscription-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stereo240pSubscription-response)))
  "Returns full string definition for message of type 'Stereo240pSubscription-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stereo240pSubscription-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stereo240pSubscription-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Stereo240pSubscription-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Stereo240pSubscription)))
  'Stereo240pSubscription-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Stereo240pSubscription)))
  'Stereo240pSubscription-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stereo240pSubscription)))
  "Returns string type for a service object of type '<Stereo240pSubscription>"
  "dji_sdk/Stereo240pSubscription")