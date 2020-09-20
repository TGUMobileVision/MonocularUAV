; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpUpload-request.msg.html

(cl:defclass <MissionWpUpload-request> (roslisp-msg-protocol:ros-message)
  ((waypoint_task
    :reader waypoint_task
    :initarg :waypoint_task
    :type dji_sdk-msg:MissionWaypointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionWaypointTask)))
)

(cl:defclass MissionWpUpload-request (<MissionWpUpload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpUpload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpUpload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpUpload-request> is deprecated: use dji_sdk-srv:MissionWpUpload-request instead.")))

(cl:ensure-generic-function 'waypoint_task-val :lambda-list '(m))
(cl:defmethod waypoint_task-val ((m <MissionWpUpload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:waypoint_task-val is deprecated.  Use dji_sdk-srv:waypoint_task instead.")
  (waypoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpUpload-request>) ostream)
  "Serializes a message object of type '<MissionWpUpload-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpUpload-request>) istream)
  "Deserializes a message object of type '<MissionWpUpload-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpUpload-request>)))
  "Returns string type for a service object of type '<MissionWpUpload-request>"
  "dji_sdk/MissionWpUploadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpUpload-request)))
  "Returns string type for a service object of type 'MissionWpUpload-request"
  "dji_sdk/MissionWpUploadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpUpload-request>)))
  "Returns md5sum for a message object of type '<MissionWpUpload-request>"
  "e18bb47c4399b0ec1e363c0b0e75db0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpUpload-request)))
  "Returns md5sum for a message object of type 'MissionWpUpload-request"
  "e18bb47c4399b0ec1e363c0b0e75db0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpUpload-request>)))
  "Returns full string definition for message of type '<MissionWpUpload-request>"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%# constant for action_on_finish~%uint8 FINISH_NO_ACTION       = 0  # no action~%uint8 FINISH_RETURN_TO_HOME  = 1  # return to home~%uint8 FINISH_AUTO_LANDING    = 2  # auto landing~%uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0~%uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit~%~%# constant for yaw_mode~%uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)~%uint8 YAW_MODE_LOCK     = 1       # lock as an initial value~%uint8 YAW_MODE_RC       = 2       # controlled by RC~%uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)~%~%# constant for trace_mode~%uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt~%uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task~%~%# constants for action_on_rc_lost~%uint8 ACTION_FREE       = 0       # exit waypoint and failsafe~%uint8 ACTION_AUTO       = 1       # continue the waypoint~%~%# constants for gimbal_pitch_mode~%uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal~%uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal~%~%float32 velocity_range    # Maximum speed joystick input(2~~15m)~%float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)~%uint8 action_on_finish    # See constants above for possible actions~%uint8 mission_exec_times  # 1: once ; 2: twice~%uint8 yaw_mode            # see constants above for possible yaw modes~%uint8 trace_mode          # see constants above for possible trace modes~%uint8 action_on_rc_lost   # see constants above for possible actions~%uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes~%MissionWaypoint[] mission_waypoint  # a vector of waypoints~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude          # degree~%float64 longitude         # degree~%float32 altitude          # relative altitude from takeoff point~%float32 damping_distance  # Bend length (effective coordinated turn mode only)~%int16 target_yaw          # Yaw (degree)~%int16 target_gimbal_pitch # Gimbal pitch~%uint8 turn_mode           # 0: clockwise, 1: counter-clockwise~%uint8 has_action          # 0: no, 1: yes~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpUpload-request)))
  "Returns full string definition for message of type 'MissionWpUpload-request"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%# constant for action_on_finish~%uint8 FINISH_NO_ACTION       = 0  # no action~%uint8 FINISH_RETURN_TO_HOME  = 1  # return to home~%uint8 FINISH_AUTO_LANDING    = 2  # auto landing~%uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0~%uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit~%~%# constant for yaw_mode~%uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)~%uint8 YAW_MODE_LOCK     = 1       # lock as an initial value~%uint8 YAW_MODE_RC       = 2       # controlled by RC~%uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)~%~%# constant for trace_mode~%uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt~%uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task~%~%# constants for action_on_rc_lost~%uint8 ACTION_FREE       = 0       # exit waypoint and failsafe~%uint8 ACTION_AUTO       = 1       # continue the waypoint~%~%# constants for gimbal_pitch_mode~%uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal~%uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal~%~%float32 velocity_range    # Maximum speed joystick input(2~~15m)~%float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)~%uint8 action_on_finish    # See constants above for possible actions~%uint8 mission_exec_times  # 1: once ; 2: twice~%uint8 yaw_mode            # see constants above for possible yaw modes~%uint8 trace_mode          # see constants above for possible trace modes~%uint8 action_on_rc_lost   # see constants above for possible actions~%uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes~%MissionWaypoint[] mission_waypoint  # a vector of waypoints~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude          # degree~%float64 longitude         # degree~%float32 altitude          # relative altitude from takeoff point~%float32 damping_distance  # Bend length (effective coordinated turn mode only)~%int16 target_yaw          # Yaw (degree)~%int16 target_gimbal_pitch # Gimbal pitch~%uint8 turn_mode           # 0: clockwise, 1: counter-clockwise~%uint8 has_action          # 0: no, 1: yes~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpUpload-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpUpload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpUpload-request
    (cl:cons ':waypoint_task (waypoint_task msg))
))
;//! \htmlinclude MissionWpUpload-response.msg.html

(cl:defclass <MissionWpUpload-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (cmd_set
    :reader cmd_set
    :initarg :cmd_set
    :type cl:fixnum
    :initform 0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (ack_data
    :reader ack_data
    :initarg :ack_data
    :type cl:integer
    :initform 0))
)

(cl:defclass MissionWpUpload-response (<MissionWpUpload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpUpload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpUpload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpUpload-response> is deprecated: use dji_sdk-srv:MissionWpUpload-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionWpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'cmd_set-val :lambda-list '(m))
(cl:defmethod cmd_set-val ((m <MissionWpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_set-val is deprecated.  Use dji_sdk-srv:cmd_set instead.")
  (cmd_set m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <MissionWpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:cmd_id-val is deprecated.  Use dji_sdk-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'ack_data-val :lambda-list '(m))
(cl:defmethod ack_data-val ((m <MissionWpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:ack_data-val is deprecated.  Use dji_sdk-srv:ack_data instead.")
  (ack_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpUpload-response>) ostream)
  "Serializes a message object of type '<MissionWpUpload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpUpload-response>) istream)
  "Deserializes a message object of type '<MissionWpUpload-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ack_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpUpload-response>)))
  "Returns string type for a service object of type '<MissionWpUpload-response>"
  "dji_sdk/MissionWpUploadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpUpload-response)))
  "Returns string type for a service object of type 'MissionWpUpload-response"
  "dji_sdk/MissionWpUploadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpUpload-response>)))
  "Returns md5sum for a message object of type '<MissionWpUpload-response>"
  "e18bb47c4399b0ec1e363c0b0e75db0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpUpload-response)))
  "Returns md5sum for a message object of type 'MissionWpUpload-response"
  "e18bb47c4399b0ec1e363c0b0e75db0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpUpload-response>)))
  "Returns full string definition for message of type '<MissionWpUpload-response>"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpUpload-response)))
  "Returns full string definition for message of type 'MissionWpUpload-response"
  (cl:format cl:nil "bool result~%~%uint8 cmd_set~%uint8 cmd_id~%uint32 ack_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpUpload-response>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpUpload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpUpload-response
    (cl:cons ':result (result msg))
    (cl:cons ':cmd_set (cmd_set msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':ack_data (ack_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpUpload)))
  'MissionWpUpload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpUpload)))
  'MissionWpUpload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpUpload)))
  "Returns string type for a service object of type '<MissionWpUpload>"
  "dji_sdk/MissionWpUpload")