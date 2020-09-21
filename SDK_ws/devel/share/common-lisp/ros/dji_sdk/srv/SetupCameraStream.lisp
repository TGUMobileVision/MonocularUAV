; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SetupCameraStream-request.msg.html

(cl:defclass <SetupCameraStream-request> (roslisp-msg-protocol:ros-message)
  ((cameraType
    :reader cameraType
    :initarg :cameraType
    :type cl:fixnum
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetupCameraStream-request (<SetupCameraStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetupCameraStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetupCameraStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SetupCameraStream-request> is deprecated: use dji_sdk-srv:SetupCameraStream-request instead.")))

(cl:ensure-generic-function 'cameraType-val :lambda-list '(m))
(cl:defmethod cameraType-val ((m <SetupCameraStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cameraType-val is deprecated.  Use dji_sdk-srv:cameraType instead.")
  (cameraType m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <SetupCameraStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:start-val is deprecated.  Use dji_sdk-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetupCameraStream-request>)))
    "Constants for message type '<SetupCameraStream-request>"
  '((:FPV_CAM . 0)
    (:MAIN_CAM . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetupCameraStream-request)))
    "Constants for message type 'SetupCameraStream-request"
  '((:FPV_CAM . 0)
    (:MAIN_CAM . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetupCameraStream-request>) ostream)
  "Serializes a message object of type '<SetupCameraStream-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cameraType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetupCameraStream-request>) istream)
  "Deserializes a message object of type '<SetupCameraStream-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cameraType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetupCameraStream-request>)))
  "Returns string type for a service object of type '<SetupCameraStream-request>"
  "dji_sdk/SetupCameraStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupCameraStream-request)))
  "Returns string type for a service object of type 'SetupCameraStream-request"
  "dji_sdk/SetupCameraStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetupCameraStream-request>)))
  "Returns md5sum for a message object of type '<SetupCameraStream-request>"
  "e0732f307563f64841a2e5c6880f32d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetupCameraStream-request)))
  "Returns md5sum for a message object of type 'SetupCameraStream-request"
  "e0732f307563f64841a2e5c6880f32d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetupCameraStream-request>)))
  "Returns full string definition for message of type '<SetupCameraStream-request>"
  (cl:format cl:nil "~%uint8 FPV_CAM  = 0~%uint8 MAIN_CAM = 1~%~%~%uint8 cameraType~%~%~%uint8 start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetupCameraStream-request)))
  "Returns full string definition for message of type 'SetupCameraStream-request"
  (cl:format cl:nil "~%uint8 FPV_CAM  = 0~%uint8 MAIN_CAM = 1~%~%~%uint8 cameraType~%~%~%uint8 start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetupCameraStream-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetupCameraStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetupCameraStream-request
    (cl:cons ':cameraType (cameraType msg))
    (cl:cons ':start (start msg))
))
;//! \htmlinclude SetupCameraStream-response.msg.html

(cl:defclass <SetupCameraStream-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetupCameraStream-response (<SetupCameraStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetupCameraStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetupCameraStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SetupCameraStream-response> is deprecated: use dji_sdk-srv:SetupCameraStream-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetupCameraStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetupCameraStream-response>) ostream)
  "Serializes a message object of type '<SetupCameraStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetupCameraStream-response>) istream)
  "Deserializes a message object of type '<SetupCameraStream-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetupCameraStream-response>)))
  "Returns string type for a service object of type '<SetupCameraStream-response>"
  "dji_sdk/SetupCameraStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupCameraStream-response)))
  "Returns string type for a service object of type 'SetupCameraStream-response"
  "dji_sdk/SetupCameraStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetupCameraStream-response>)))
  "Returns md5sum for a message object of type '<SetupCameraStream-response>"
  "e0732f307563f64841a2e5c6880f32d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetupCameraStream-response)))
  "Returns md5sum for a message object of type 'SetupCameraStream-response"
  "e0732f307563f64841a2e5c6880f32d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetupCameraStream-response>)))
  "Returns full string definition for message of type '<SetupCameraStream-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetupCameraStream-response)))
  "Returns full string definition for message of type 'SetupCameraStream-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetupCameraStream-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetupCameraStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetupCameraStream-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetupCameraStream)))
  'SetupCameraStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetupCameraStream)))
  'SetupCameraStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupCameraStream)))
  "Returns string type for a service object of type '<SetupCameraStream>"
  "dji_sdk/SetupCameraStream")