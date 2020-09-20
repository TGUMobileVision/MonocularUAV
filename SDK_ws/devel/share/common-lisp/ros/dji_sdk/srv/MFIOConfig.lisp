; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MFIOConfig-request.msg.html

(cl:defclass <MFIOConfig-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (init_on_time_us
    :reader init_on_time_us
    :initarg :init_on_time_us
    :type cl:integer
    :initform 0)
   (pwm_freq
    :reader pwm_freq
    :initarg :pwm_freq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MFIOConfig-request (<MFIOConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MFIOConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MFIOConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MFIOConfig-request> is deprecated: use dji_sdk-srv:MFIOConfig-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MFIOConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:mode-val is deprecated.  Use dji_sdk-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <MFIOConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:channel-val is deprecated.  Use dji_sdk-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'init_on_time_us-val :lambda-list '(m))
(cl:defmethod init_on_time_us-val ((m <MFIOConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:init_on_time_us-val is deprecated.  Use dji_sdk-srv:init_on_time_us instead.")
  (init_on_time_us m))

(cl:ensure-generic-function 'pwm_freq-val :lambda-list '(m))
(cl:defmethod pwm_freq-val ((m <MFIOConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:pwm_freq-val is deprecated.  Use dji_sdk-srv:pwm_freq instead.")
  (pwm_freq m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MFIOConfig-request>)))
    "Constants for message type '<MFIOConfig-request>"
  '((:MODE_PWM_OUT . 0)
    (:MODE_GPIO_OUT . 2)
    (:MODE_GPIO_IN . 3)
    (:MODE_ADC . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MFIOConfig-request)))
    "Constants for message type 'MFIOConfig-request"
  '((:MODE_PWM_OUT . 0)
    (:MODE_GPIO_OUT . 2)
    (:MODE_GPIO_IN . 3)
    (:MODE_ADC . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MFIOConfig-request>) ostream)
  "Serializes a message object of type '<MFIOConfig-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_freq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MFIOConfig-request>) istream)
  "Deserializes a message object of type '<MFIOConfig-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_freq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MFIOConfig-request>)))
  "Returns string type for a service object of type '<MFIOConfig-request>"
  "dji_sdk/MFIOConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIOConfig-request)))
  "Returns string type for a service object of type 'MFIOConfig-request"
  "dji_sdk/MFIOConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MFIOConfig-request>)))
  "Returns md5sum for a message object of type '<MFIOConfig-request>"
  "ad06bda475c7f13453680ee626114de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MFIOConfig-request)))
  "Returns md5sum for a message object of type 'MFIOConfig-request"
  "ad06bda475c7f13453680ee626114de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MFIOConfig-request>)))
  "Returns full string definition for message of type '<MFIOConfig-request>"
  (cl:format cl:nil "~%uint8 MODE_PWM_OUT  = 0~%~%uint8 MODE_GPIO_OUT = 2~%uint8 MODE_GPIO_IN  = 3~%uint8 MODE_ADC      = 4~%~%~%uint8 mode~%uint8 channel~%uint32 init_on_time_us~%uint16 pwm_freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MFIOConfig-request)))
  "Returns full string definition for message of type 'MFIOConfig-request"
  (cl:format cl:nil "~%uint8 MODE_PWM_OUT  = 0~%~%uint8 MODE_GPIO_OUT = 2~%uint8 MODE_GPIO_IN  = 3~%uint8 MODE_ADC      = 4~%~%~%uint8 mode~%uint8 channel~%uint32 init_on_time_us~%uint16 pwm_freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MFIOConfig-request>))
  (cl:+ 0
     1
     1
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MFIOConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MFIOConfig-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':init_on_time_us (init_on_time_us msg))
    (cl:cons ':pwm_freq (pwm_freq msg))
))
;//! \htmlinclude MFIOConfig-response.msg.html

(cl:defclass <MFIOConfig-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MFIOConfig-response (<MFIOConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MFIOConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MFIOConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MFIOConfig-response> is deprecated: use dji_sdk-srv:MFIOConfig-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MFIOConfig-response>) ostream)
  "Serializes a message object of type '<MFIOConfig-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MFIOConfig-response>) istream)
  "Deserializes a message object of type '<MFIOConfig-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MFIOConfig-response>)))
  "Returns string type for a service object of type '<MFIOConfig-response>"
  "dji_sdk/MFIOConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIOConfig-response)))
  "Returns string type for a service object of type 'MFIOConfig-response"
  "dji_sdk/MFIOConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MFIOConfig-response>)))
  "Returns md5sum for a message object of type '<MFIOConfig-response>"
  "ad06bda475c7f13453680ee626114de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MFIOConfig-response)))
  "Returns md5sum for a message object of type 'MFIOConfig-response"
  "ad06bda475c7f13453680ee626114de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MFIOConfig-response>)))
  "Returns full string definition for message of type '<MFIOConfig-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MFIOConfig-response)))
  "Returns full string definition for message of type 'MFIOConfig-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MFIOConfig-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MFIOConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MFIOConfig-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MFIOConfig)))
  'MFIOConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MFIOConfig)))
  'MFIOConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIOConfig)))
  "Returns string type for a service object of type '<MFIOConfig>"
  "dji_sdk/MFIOConfig")