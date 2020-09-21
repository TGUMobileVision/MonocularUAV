; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionStatus-request.msg.html

(cl:defclass <MissionStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionStatus-request (<MissionStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionStatus-request> is deprecated: use dji_sdk-srv:MissionStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatus-request>) ostream)
  "Serializes a message object of type '<MissionStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatus-request>) istream)
  "Deserializes a message object of type '<MissionStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatus-request>)))
  "Returns string type for a service object of type '<MissionStatus-request>"
  "dji_sdk/MissionStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatus-request)))
  "Returns string type for a service object of type 'MissionStatus-request"
  "dji_sdk/MissionStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatus-request>)))
  "Returns md5sum for a message object of type '<MissionStatus-request>"
  "76ed0b909c77c6ce98df135419939be9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatus-request)))
  "Returns md5sum for a message object of type 'MissionStatus-request"
  "76ed0b909c77c6ce98df135419939be9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatus-request>)))
  "Returns full string definition for message of type '<MissionStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatus-request)))
  "Returns full string definition for message of type 'MissionStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatus-request
))
;//! \htmlinclude MissionStatus-response.msg.html

(cl:defclass <MissionStatus-response> (roslisp-msg-protocol:ros-message)
  ((waypoint_mission_count
    :reader waypoint_mission_count
    :initarg :waypoint_mission_count
    :type cl:fixnum
    :initform 0)
   (hotpoint_mission_count
    :reader hotpoint_mission_count
    :initarg :hotpoint_mission_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionStatus-response (<MissionStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionStatus-response> is deprecated: use dji_sdk-srv:MissionStatus-response instead.")))

(cl:ensure-generic-function 'waypoint_mission_count-val :lambda-list '(m))
(cl:defmethod waypoint_mission_count-val ((m <MissionStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:waypoint_mission_count-val is deprecated.  Use dji_sdk-srv:waypoint_mission_count instead.")
  (waypoint_mission_count m))

(cl:ensure-generic-function 'hotpoint_mission_count-val :lambda-list '(m))
(cl:defmethod hotpoint_mission_count-val ((m <MissionStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:hotpoint_mission_count-val is deprecated.  Use dji_sdk-srv:hotpoint_mission_count instead.")
  (hotpoint_mission_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatus-response>) ostream)
  "Serializes a message object of type '<MissionStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypoint_mission_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hotpoint_mission_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatus-response>) istream)
  "Deserializes a message object of type '<MissionStatus-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypoint_mission_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hotpoint_mission_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatus-response>)))
  "Returns string type for a service object of type '<MissionStatus-response>"
  "dji_sdk/MissionStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatus-response)))
  "Returns string type for a service object of type 'MissionStatus-response"
  "dji_sdk/MissionStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatus-response>)))
  "Returns md5sum for a message object of type '<MissionStatus-response>"
  "76ed0b909c77c6ce98df135419939be9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatus-response)))
  "Returns md5sum for a message object of type 'MissionStatus-response"
  "76ed0b909c77c6ce98df135419939be9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatus-response>)))
  "Returns full string definition for message of type '<MissionStatus-response>"
  (cl:format cl:nil "uint8 waypoint_mission_count~%uint8 hotpoint_mission_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatus-response)))
  "Returns full string definition for message of type 'MissionStatus-response"
  (cl:format cl:nil "uint8 waypoint_mission_count~%uint8 hotpoint_mission_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatus-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatus-response
    (cl:cons ':waypoint_mission_count (waypoint_mission_count msg))
    (cl:cons ':hotpoint_mission_count (hotpoint_mission_count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionStatus)))
  'MissionStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionStatus)))
  'MissionStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatus)))
  "Returns string type for a service object of type '<MissionStatus>"
  "dji_sdk/MissionStatus")