; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionWaypointAction.msg.html

(cl:defclass <MissionWaypointAction> (roslisp-msg-protocol:ros-message)
  ((action_repeat
    :reader action_repeat
    :initarg :action_repeat
    :type cl:fixnum
    :initform 0)
   (command_list
    :reader command_list
    :initarg :command_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0))
   (command_parameter
    :reader command_parameter
    :initarg :command_parameter
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MissionWaypointAction (<MissionWaypointAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWaypointAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWaypointAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionWaypointAction> is deprecated: use dji_sdk-msg:MissionWaypointAction instead.")))

(cl:ensure-generic-function 'action_repeat-val :lambda-list '(m))
(cl:defmethod action_repeat-val ((m <MissionWaypointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:action_repeat-val is deprecated.  Use dji_sdk-msg:action_repeat instead.")
  (action_repeat m))

(cl:ensure-generic-function 'command_list-val :lambda-list '(m))
(cl:defmethod command_list-val ((m <MissionWaypointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:command_list-val is deprecated.  Use dji_sdk-msg:command_list instead.")
  (command_list m))

(cl:ensure-generic-function 'command_parameter-val :lambda-list '(m))
(cl:defmethod command_parameter-val ((m <MissionWaypointAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:command_parameter-val is deprecated.  Use dji_sdk-msg:command_parameter instead.")
  (command_parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWaypointAction>) ostream)
  "Serializes a message object of type '<MissionWaypointAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_repeat)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'command_list))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'command_parameter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWaypointAction>) istream)
  "Deserializes a message object of type '<MissionWaypointAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_repeat)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'command_list) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'command_list)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'command_parameter) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'command_parameter)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWaypointAction>)))
  "Returns string type for a message object of type '<MissionWaypointAction>"
  "dji_sdk/MissionWaypointAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypointAction)))
  "Returns string type for a message object of type 'MissionWaypointAction"
  "dji_sdk/MissionWaypointAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWaypointAction>)))
  "Returns md5sum for a message object of type '<MissionWaypointAction>"
  "940a2c85852b1259dcafa1d9b9ce78fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWaypointAction)))
  "Returns md5sum for a message object of type 'MissionWaypointAction"
  "940a2c85852b1259dcafa1d9b9ce78fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWaypointAction>)))
  "Returns full string definition for message of type '<MissionWaypointAction>"
  (cl:format cl:nil "# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWaypointAction)))
  "Returns full string definition for message of type 'MissionWaypointAction"
  (cl:format cl:nil "# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWaypointAction>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'command_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'command_parameter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWaypointAction>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWaypointAction
    (cl:cons ':action_repeat (action_repeat msg))
    (cl:cons ':command_list (command_list msg))
    (cl:cons ':command_parameter (command_parameter msg))
))
