; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude StereoVGASubscription-request.msg.html

(cl:defclass <StereoVGASubscription-request> (roslisp-msg-protocol:ros-message)
  ((vga_freq
    :reader vga_freq
    :initarg :vga_freq
    :type cl:fixnum
    :initform 0)
   (front_vga
    :reader front_vga
    :initarg :front_vga
    :type cl:fixnum
    :initform 0)
   (unsubscribe_vga
    :reader unsubscribe_vga
    :initarg :unsubscribe_vga
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StereoVGASubscription-request (<StereoVGASubscription-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoVGASubscription-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoVGASubscription-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<StereoVGASubscription-request> is deprecated: use dji_sdk-srv:StereoVGASubscription-request instead.")))

(cl:ensure-generic-function 'vga_freq-val :lambda-list '(m))
(cl:defmethod vga_freq-val ((m <StereoVGASubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:vga_freq-val is deprecated.  Use dji_sdk-srv:vga_freq instead.")
  (vga_freq m))

(cl:ensure-generic-function 'front_vga-val :lambda-list '(m))
(cl:defmethod front_vga-val ((m <StereoVGASubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:front_vga-val is deprecated.  Use dji_sdk-srv:front_vga instead.")
  (front_vga m))

(cl:ensure-generic-function 'unsubscribe_vga-val :lambda-list '(m))
(cl:defmethod unsubscribe_vga-val ((m <StereoVGASubscription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:unsubscribe_vga-val is deprecated.  Use dji_sdk-srv:unsubscribe_vga instead.")
  (unsubscribe_vga m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StereoVGASubscription-request>)))
    "Constants for message type '<StereoVGASubscription-request>"
  '((:VGA_20_HZ . 0)
    (:VGA_10_HZ . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StereoVGASubscription-request)))
    "Constants for message type 'StereoVGASubscription-request"
  '((:VGA_20_HZ . 0)
    (:VGA_10_HZ . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoVGASubscription-request>) ostream)
  "Serializes a message object of type '<StereoVGASubscription-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vga_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_vga)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsubscribe_vga)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoVGASubscription-request>) istream)
  "Deserializes a message object of type '<StereoVGASubscription-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vga_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_vga)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsubscribe_vga)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoVGASubscription-request>)))
  "Returns string type for a service object of type '<StereoVGASubscription-request>"
  "dji_sdk/StereoVGASubscriptionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoVGASubscription-request)))
  "Returns string type for a service object of type 'StereoVGASubscription-request"
  "dji_sdk/StereoVGASubscriptionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoVGASubscription-request>)))
  "Returns md5sum for a message object of type '<StereoVGASubscription-request>"
  "a636307470f5a4e2ecf4fbcb4aeca4ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoVGASubscription-request)))
  "Returns md5sum for a message object of type 'StereoVGASubscription-request"
  "a636307470f5a4e2ecf4fbcb4aeca4ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoVGASubscription-request>)))
  "Returns full string definition for message of type '<StereoVGASubscription-request>"
  (cl:format cl:nil "~%uint8 VGA_20_HZ = 0~%uint8 VGA_10_HZ = 1~%~%~%uint8 vga_freq~%~%~%uint8 front_vga~%~%~%~%uint8 unsubscribe_vga~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoVGASubscription-request)))
  "Returns full string definition for message of type 'StereoVGASubscription-request"
  (cl:format cl:nil "~%uint8 VGA_20_HZ = 0~%uint8 VGA_10_HZ = 1~%~%~%uint8 vga_freq~%~%~%uint8 front_vga~%~%~%~%uint8 unsubscribe_vga~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoVGASubscription-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoVGASubscription-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoVGASubscription-request
    (cl:cons ':vga_freq (vga_freq msg))
    (cl:cons ':front_vga (front_vga msg))
    (cl:cons ':unsubscribe_vga (unsubscribe_vga msg))
))
;//! \htmlinclude StereoVGASubscription-response.msg.html

(cl:defclass <StereoVGASubscription-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StereoVGASubscription-response (<StereoVGASubscription-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoVGASubscription-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoVGASubscription-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<StereoVGASubscription-response> is deprecated: use dji_sdk-srv:StereoVGASubscription-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StereoVGASubscription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoVGASubscription-response>) ostream)
  "Serializes a message object of type '<StereoVGASubscription-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoVGASubscription-response>) istream)
  "Deserializes a message object of type '<StereoVGASubscription-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoVGASubscription-response>)))
  "Returns string type for a service object of type '<StereoVGASubscription-response>"
  "dji_sdk/StereoVGASubscriptionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoVGASubscription-response)))
  "Returns string type for a service object of type 'StereoVGASubscription-response"
  "dji_sdk/StereoVGASubscriptionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoVGASubscription-response>)))
  "Returns md5sum for a message object of type '<StereoVGASubscription-response>"
  "a636307470f5a4e2ecf4fbcb4aeca4ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoVGASubscription-response)))
  "Returns md5sum for a message object of type 'StereoVGASubscription-response"
  "a636307470f5a4e2ecf4fbcb4aeca4ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoVGASubscription-response>)))
  "Returns full string definition for message of type '<StereoVGASubscription-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoVGASubscription-response)))
  "Returns full string definition for message of type 'StereoVGASubscription-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoVGASubscription-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoVGASubscription-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoVGASubscription-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StereoVGASubscription)))
  'StereoVGASubscription-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StereoVGASubscription)))
  'StereoVGASubscription-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoVGASubscription)))
  "Returns string type for a service object of type '<StereoVGASubscription>"
  "dji_sdk/StereoVGASubscription")