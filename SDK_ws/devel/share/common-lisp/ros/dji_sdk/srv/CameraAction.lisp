; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude CameraAction-request.msg.html

(cl:defclass <CameraAction-request> (roslisp-msg-protocol:ros-message)
  ((camera_action
    :reader camera_action
    :initarg :camera_action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraAction-request (<CameraAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<CameraAction-request> is deprecated: use dji_sdk-srv:CameraAction-request instead.")))

(cl:ensure-generic-function 'camera_action-val :lambda-list '(m))
(cl:defmethod camera_action-val ((m <CameraAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:camera_action-val is deprecated.  Use dji_sdk-srv:camera_action instead.")
  (camera_action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraAction-request>)))
    "Constants for message type '<CameraAction-request>"
  '((:CAMERA_ACTION_TAKE_PICTURE . 0)
    (:CAMERA_ACTION_START_RECORD . 1)
    (:CAMERA_ACTION_STOP_RECORD . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraAction-request)))
    "Constants for message type 'CameraAction-request"
  '((:CAMERA_ACTION_TAKE_PICTURE . 0)
    (:CAMERA_ACTION_START_RECORD . 1)
    (:CAMERA_ACTION_STOP_RECORD . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraAction-request>) ostream)
  "Serializes a message object of type '<CameraAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraAction-request>) istream)
  "Deserializes a message object of type '<CameraAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraAction-request>)))
  "Returns string type for a service object of type '<CameraAction-request>"
  "dji_sdk/CameraActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraAction-request)))
  "Returns string type for a service object of type 'CameraAction-request"
  "dji_sdk/CameraActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraAction-request>)))
  "Returns md5sum for a message object of type '<CameraAction-request>"
  "cffa80c600cf5ffacb2c7279944f208e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraAction-request)))
  "Returns md5sum for a message object of type 'CameraAction-request"
  "cffa80c600cf5ffacb2c7279944f208e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraAction-request>)))
  "Returns full string definition for message of type '<CameraAction-request>"
  (cl:format cl:nil "~%uint8 CAMERA_ACTION_TAKE_PICTURE = 0~%uint8 CAMERA_ACTION_START_RECORD = 1~%uint8 CAMERA_ACTION_STOP_RECORD  = 2~%~%~%uint8 camera_action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraAction-request)))
  "Returns full string definition for message of type 'CameraAction-request"
  (cl:format cl:nil "~%uint8 CAMERA_ACTION_TAKE_PICTURE = 0~%uint8 CAMERA_ACTION_START_RECORD = 1~%uint8 CAMERA_ACTION_STOP_RECORD  = 2~%~%~%uint8 camera_action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraAction-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraAction-request
    (cl:cons ':camera_action (camera_action msg))
))
;//! \htmlinclude CameraAction-response.msg.html

(cl:defclass <CameraAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraAction-response (<CameraAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<CameraAction-response> is deprecated: use dji_sdk-srv:CameraAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraAction-response>) ostream)
  "Serializes a message object of type '<CameraAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraAction-response>) istream)
  "Deserializes a message object of type '<CameraAction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraAction-response>)))
  "Returns string type for a service object of type '<CameraAction-response>"
  "dji_sdk/CameraActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraAction-response)))
  "Returns string type for a service object of type 'CameraAction-response"
  "dji_sdk/CameraActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraAction-response>)))
  "Returns md5sum for a message object of type '<CameraAction-response>"
  "cffa80c600cf5ffacb2c7279944f208e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraAction-response)))
  "Returns md5sum for a message object of type 'CameraAction-response"
  "cffa80c600cf5ffacb2c7279944f208e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraAction-response>)))
  "Returns full string definition for message of type '<CameraAction-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraAction-response)))
  "Returns full string definition for message of type 'CameraAction-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraAction-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraAction)))
  'CameraAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraAction)))
  'CameraAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraAction)))
  "Returns string type for a service object of type '<CameraAction>"
  "dji_sdk/CameraAction")