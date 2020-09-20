; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpGetInfo-request.msg.html

(cl:defclass <MissionWpGetInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionWpGetInfo-request (<MissionWpGetInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpGetInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpGetInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpGetInfo-request> is deprecated: use dji_sdk-srv:MissionWpGetInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpGetInfo-request>) ostream)
  "Serializes a message object of type '<MissionWpGetInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpGetInfo-request>) istream)
  "Deserializes a message object of type '<MissionWpGetInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpGetInfo-request>)))
  "Returns string type for a service object of type '<MissionWpGetInfo-request>"
  "dji_sdk/MissionWpGetInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetInfo-request)))
  "Returns string type for a service object of type 'MissionWpGetInfo-request"
  "dji_sdk/MissionWpGetInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpGetInfo-request>)))
  "Returns md5sum for a message object of type '<MissionWpGetInfo-request>"
  "412556517acb90aa4c3e713fbb867865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpGetInfo-request)))
  "Returns md5sum for a message object of type 'MissionWpGetInfo-request"
  "412556517acb90aa4c3e713fbb867865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpGetInfo-request>)))
  "Returns full string definition for message of type '<MissionWpGetInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpGetInfo-request)))
  "Returns full string definition for message of type 'MissionWpGetInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpGetInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpGetInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpGetInfo-request
))
;//! \htmlinclude MissionWpGetInfo-response.msg.html

(cl:defclass <MissionWpGetInfo-response> (roslisp-msg-protocol:ros-message)
  ((waypoint_task
    :reader waypoint_task
    :initarg :waypoint_task
    :type dji_sdk-msg:MissionWaypointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionWaypointTask)))
)

(cl:defclass MissionWpGetInfo-response (<MissionWpGetInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpGetInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpGetInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpGetInfo-response> is deprecated: use dji_sdk-srv:MissionWpGetInfo-response instead.")))

(cl:ensure-generic-function 'waypoint_task-val :lambda-list '(m))
(cl:defmethod waypoint_task-val ((m <MissionWpGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:waypoint_task-val is deprecated.  Use dji_sdk-srv:waypoint_task instead.")
  (waypoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpGetInfo-response>) ostream)
  "Serializes a message object of type '<MissionWpGetInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpGetInfo-response>) istream)
  "Deserializes a message object of type '<MissionWpGetInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpGetInfo-response>)))
  "Returns string type for a service object of type '<MissionWpGetInfo-response>"
  "dji_sdk/MissionWpGetInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetInfo-response)))
  "Returns string type for a service object of type 'MissionWpGetInfo-response"
  "dji_sdk/MissionWpGetInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpGetInfo-response>)))
  "Returns md5sum for a message object of type '<MissionWpGetInfo-response>"
  "412556517acb90aa4c3e713fbb867865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpGetInfo-response)))
  "Returns md5sum for a message object of type 'MissionWpGetInfo-response"
  "412556517acb90aa4c3e713fbb867865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpGetInfo-response>)))
  "Returns full string definition for message of type '<MissionWpGetInfo-response>"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%# constant for action_on_finish~%uint8 FINISH_NO_ACTION       = 0  # no action~%uint8 FINISH_RETURN_TO_HOME  = 1  # return to home~%uint8 FINISH_AUTO_LANDING    = 2  # auto landing~%uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0~%uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit~%~%# constant for yaw_mode~%uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)~%uint8 YAW_MODE_LOCK     = 1       # lock as an initial value~%uint8 YAW_MODE_RC       = 2       # controlled by RC~%uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)~%~%# constant for trace_mode~%uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt~%uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task~%~%# constants for action_on_rc_lost~%uint8 ACTION_FREE       = 0       # exit waypoint and failsafe~%uint8 ACTION_AUTO       = 1       # continue the waypoint~%~%# constants for gimbal_pitch_mode~%uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal~%uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal~%~%float32 velocity_range    # Maximum speed joystick input(2~~15m)~%float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)~%uint8 action_on_finish    # See constants above for possible actions~%uint8 mission_exec_times  # 1: once ; 2: twice~%uint8 yaw_mode            # see constants above for possible yaw modes~%uint8 trace_mode          # see constants above for possible trace modes~%uint8 action_on_rc_lost   # see constants above for possible actions~%uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes~%MissionWaypoint[] mission_waypoint  # a vector of waypoints~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude          # degree~%float64 longitude         # degree~%float32 altitude          # relative altitude from takeoff point~%float32 damping_distance  # Bend length (effective coordinated turn mode only)~%int16 target_yaw          # Yaw (degree)~%int16 target_gimbal_pitch # Gimbal pitch~%uint8 turn_mode           # 0: clockwise, 1: counter-clockwise~%uint8 has_action          # 0: no, 1: yes~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpGetInfo-response)))
  "Returns full string definition for message of type 'MissionWpGetInfo-response"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%# constant for action_on_finish~%uint8 FINISH_NO_ACTION       = 0  # no action~%uint8 FINISH_RETURN_TO_HOME  = 1  # return to home~%uint8 FINISH_AUTO_LANDING    = 2  # auto landing~%uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0~%uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit~%~%# constant for yaw_mode~%uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)~%uint8 YAW_MODE_LOCK     = 1       # lock as an initial value~%uint8 YAW_MODE_RC       = 2       # controlled by RC~%uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)~%~%# constant for trace_mode~%uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt~%uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task~%~%# constants for action_on_rc_lost~%uint8 ACTION_FREE       = 0       # exit waypoint and failsafe~%uint8 ACTION_AUTO       = 1       # continue the waypoint~%~%# constants for gimbal_pitch_mode~%uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal~%uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal~%~%float32 velocity_range    # Maximum speed joystick input(2~~15m)~%float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)~%uint8 action_on_finish    # See constants above for possible actions~%uint8 mission_exec_times  # 1: once ; 2: twice~%uint8 yaw_mode            # see constants above for possible yaw modes~%uint8 trace_mode          # see constants above for possible trace modes~%uint8 action_on_rc_lost   # see constants above for possible actions~%uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes~%MissionWaypoint[] mission_waypoint  # a vector of waypoints~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude          # degree~%float64 longitude         # degree~%float32 altitude          # relative altitude from takeoff point~%float32 damping_distance  # Bend length (effective coordinated turn mode only)~%int16 target_yaw          # Yaw (degree)~%int16 target_gimbal_pitch # Gimbal pitch~%uint8 turn_mode           # 0: clockwise, 1: counter-clockwise~%uint8 has_action          # 0: no, 1: yes~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpGetInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpGetInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpGetInfo-response
    (cl:cons ':waypoint_task (waypoint_task msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpGetInfo)))
  'MissionWpGetInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpGetInfo)))
  'MissionWpGetInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetInfo)))
  "Returns string type for a service object of type '<MissionWpGetInfo>"
  "dji_sdk/MissionWpGetInfo")