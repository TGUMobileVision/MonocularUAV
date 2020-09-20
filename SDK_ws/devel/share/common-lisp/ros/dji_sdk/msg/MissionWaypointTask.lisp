; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionWaypointTask.msg.html

(cl:defclass <MissionWaypointTask> (roslisp-msg-protocol:ros-message)
  ((velocity_range
    :reader velocity_range
    :initarg :velocity_range
    :type cl:float
    :initform 0.0)
   (idle_velocity
    :reader idle_velocity
    :initarg :idle_velocity
    :type cl:float
    :initform 0.0)
   (action_on_finish
    :reader action_on_finish
    :initarg :action_on_finish
    :type cl:fixnum
    :initform 0)
   (mission_exec_times
    :reader mission_exec_times
    :initarg :mission_exec_times
    :type cl:fixnum
    :initform 0)
   (yaw_mode
    :reader yaw_mode
    :initarg :yaw_mode
    :type cl:fixnum
    :initform 0)
   (trace_mode
    :reader trace_mode
    :initarg :trace_mode
    :type cl:fixnum
    :initform 0)
   (action_on_rc_lost
    :reader action_on_rc_lost
    :initarg :action_on_rc_lost
    :type cl:fixnum
    :initform 0)
   (gimbal_pitch_mode
    :reader gimbal_pitch_mode
    :initarg :gimbal_pitch_mode
    :type cl:fixnum
    :initform 0)
   (mission_waypoint
    :reader mission_waypoint
    :initarg :mission_waypoint
    :type (cl:vector dji_sdk-msg:MissionWaypoint)
   :initform (cl:make-array 0 :element-type 'dji_sdk-msg:MissionWaypoint :initial-element (cl:make-instance 'dji_sdk-msg:MissionWaypoint))))
)

(cl:defclass MissionWaypointTask (<MissionWaypointTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWaypointTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWaypointTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionWaypointTask> is deprecated: use dji_sdk-msg:MissionWaypointTask instead.")))

(cl:ensure-generic-function 'velocity_range-val :lambda-list '(m))
(cl:defmethod velocity_range-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_range-val is deprecated.  Use dji_sdk-msg:velocity_range instead.")
  (velocity_range m))

(cl:ensure-generic-function 'idle_velocity-val :lambda-list '(m))
(cl:defmethod idle_velocity-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:idle_velocity-val is deprecated.  Use dji_sdk-msg:idle_velocity instead.")
  (idle_velocity m))

(cl:ensure-generic-function 'action_on_finish-val :lambda-list '(m))
(cl:defmethod action_on_finish-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:action_on_finish-val is deprecated.  Use dji_sdk-msg:action_on_finish instead.")
  (action_on_finish m))

(cl:ensure-generic-function 'mission_exec_times-val :lambda-list '(m))
(cl:defmethod mission_exec_times-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_exec_times-val is deprecated.  Use dji_sdk-msg:mission_exec_times instead.")
  (mission_exec_times m))

(cl:ensure-generic-function 'yaw_mode-val :lambda-list '(m))
(cl:defmethod yaw_mode-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:yaw_mode-val is deprecated.  Use dji_sdk-msg:yaw_mode instead.")
  (yaw_mode m))

(cl:ensure-generic-function 'trace_mode-val :lambda-list '(m))
(cl:defmethod trace_mode-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:trace_mode-val is deprecated.  Use dji_sdk-msg:trace_mode instead.")
  (trace_mode m))

(cl:ensure-generic-function 'action_on_rc_lost-val :lambda-list '(m))
(cl:defmethod action_on_rc_lost-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:action_on_rc_lost-val is deprecated.  Use dji_sdk-msg:action_on_rc_lost instead.")
  (action_on_rc_lost m))

(cl:ensure-generic-function 'gimbal_pitch_mode-val :lambda-list '(m))
(cl:defmethod gimbal_pitch_mode-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:gimbal_pitch_mode-val is deprecated.  Use dji_sdk-msg:gimbal_pitch_mode instead.")
  (gimbal_pitch_mode m))

(cl:ensure-generic-function 'mission_waypoint-val :lambda-list '(m))
(cl:defmethod mission_waypoint-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_waypoint-val is deprecated.  Use dji_sdk-msg:mission_waypoint instead.")
  (mission_waypoint m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionWaypointTask>)))
    "Constants for message type '<MissionWaypointTask>"
  '((:FINISH_NO_ACTION . 0)
    (:FINISH_RETURN_TO_HOME . 1)
    (:FINISH_AUTO_LANDING . 2)
    (:FINISH_RETURN_TO_POINT . 3)
    (:FINISH_NO_EXIT . 4)
    (:YAW_MODE_AUTO . 0)
    (:YAW_MODE_LOCK . 1)
    (:YAW_MODE_RC . 2)
    (:YAW_MODE_WAYPOINT . 3)
    (:TRACE_POINT . 0)
    (:TRACE_COORDINATED . 1)
    (:ACTION_FREE . 0)
    (:ACTION_AUTO . 1)
    (:GIMBAL_PITCH_FREE . 0)
    (:GIMBAL_PITCH_AUTO . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionWaypointTask)))
    "Constants for message type 'MissionWaypointTask"
  '((:FINISH_NO_ACTION . 0)
    (:FINISH_RETURN_TO_HOME . 1)
    (:FINISH_AUTO_LANDING . 2)
    (:FINISH_RETURN_TO_POINT . 3)
    (:FINISH_NO_EXIT . 4)
    (:YAW_MODE_AUTO . 0)
    (:YAW_MODE_LOCK . 1)
    (:YAW_MODE_RC . 2)
    (:YAW_MODE_WAYPOINT . 3)
    (:TRACE_POINT . 0)
    (:TRACE_COORDINATED . 1)
    (:ACTION_FREE . 0)
    (:ACTION_AUTO . 1)
    (:GIMBAL_PITCH_FREE . 0)
    (:GIMBAL_PITCH_AUTO . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWaypointTask>) ostream)
  "Serializes a message object of type '<MissionWaypointTask>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'idle_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_finish)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_exec_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trace_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_rc_lost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_pitch_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_waypoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mission_waypoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWaypointTask>) istream)
  "Deserializes a message object of type '<MissionWaypointTask>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'idle_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_finish)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_exec_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trace_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_rc_lost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_pitch_mode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_waypoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_waypoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dji_sdk-msg:MissionWaypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWaypointTask>)))
  "Returns string type for a message object of type '<MissionWaypointTask>"
  "dji_sdk/MissionWaypointTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypointTask)))
  "Returns string type for a message object of type 'MissionWaypointTask"
  "dji_sdk/MissionWaypointTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWaypointTask>)))
  "Returns md5sum for a message object of type '<MissionWaypointTask>"
  "c869e0f592c937d8202723285e6957d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWaypointTask)))
  "Returns md5sum for a message object of type 'MissionWaypointTask"
  "c869e0f592c937d8202723285e6957d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWaypointTask>)))
  "Returns full string definition for message of type '<MissionWaypointTask>"
  (cl:format cl:nil "# constant for action_on_finish~%uint8 FINISH_NO_ACTION       = 0  # no action~%uint8 FINISH_RETURN_TO_HOME  = 1  # return to home~%uint8 FINISH_AUTO_LANDING    = 2  # auto landing~%uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0~%uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit~%~%# constant for yaw_mode~%uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)~%uint8 YAW_MODE_LOCK     = 1       # lock as an initial value~%uint8 YAW_MODE_RC       = 2       # controlled by RC~%uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)~%~%# constant for trace_mode~%uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt~%uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task~%~%# constants for action_on_rc_lost~%uint8 ACTION_FREE       = 0       # exit waypoint and failsafe~%uint8 ACTION_AUTO       = 1       # continue the waypoint~%~%# constants for gimbal_pitch_mode~%uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal~%uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal~%~%float32 velocity_range    # Maximum speed joystick input(2~~15m)~%float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)~%uint8 action_on_finish    # See constants above for possible actions~%uint8 mission_exec_times  # 1: once ; 2: twice~%uint8 yaw_mode            # see constants above for possible yaw modes~%uint8 trace_mode          # see constants above for possible trace modes~%uint8 action_on_rc_lost   # see constants above for possible actions~%uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes~%MissionWaypoint[] mission_waypoint  # a vector of waypoints~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude          # degree~%float64 longitude         # degree~%float32 altitude          # relative altitude from takeoff point~%float32 damping_distance  # Bend length (effective coordinated turn mode only)~%int16 target_yaw          # Yaw (degree)~%int16 target_gimbal_pitch # Gimbal pitch~%uint8 turn_mode           # 0: clockwise, 1: counter-clockwise~%uint8 has_action          # 0: no, 1: yes~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWaypointTask)))
  "Returns full string definition for message of type 'MissionWaypointTask"
  (cl:format cl:nil "# constant for action_on_finish~%uint8 FINISH_NO_ACTION       = 0  # no action~%uint8 FINISH_RETURN_TO_HOME  = 1  # return to home~%uint8 FINISH_AUTO_LANDING    = 2  # auto landing~%uint8 FINISH_RETURN_TO_POINT = 3  # return to point 0~%uint8 FINISH_NO_EXIT         = 4  # infinite mode， no exit~%~%# constant for yaw_mode~%uint8 YAW_MODE_AUTO     = 0       # auto mode (point to next waypoint)~%uint8 YAW_MODE_LOCK     = 1       # lock as an initial value~%uint8 YAW_MODE_RC       = 2       # controlled by RC~%uint8 YAW_MODE_WAYPOINT = 3       # use waypoint's yaw(tgt_yaw)~%~%# constant for trace_mode~%uint8 TRACE_POINT       = 0       # point to point, after reaching the target waypoint hover, complete waypt action (if any), then fly to the next waypt~%uint8 TRACE_COORDINATED = 1       # 1: Coordinated turn mode, smooth transition between waypts, no waypts task~%~%# constants for action_on_rc_lost~%uint8 ACTION_FREE       = 0       # exit waypoint and failsafe~%uint8 ACTION_AUTO       = 1       # continue the waypoint~%~%# constants for gimbal_pitch_mode~%uint8 GIMBAL_PITCH_FREE = 0       # free mode, no control on gimbal~%uint8 GIMBAL_PITCH_AUTO = 1       # auto mode, Smooth transition between waypoints on gimbal~%~%float32 velocity_range    # Maximum speed joystick input(2~~15m)~%float32 idle_velocity     # Cruising Speed (without joystick input, no more than vel_cmd_range)~%uint8 action_on_finish    # See constants above for possible actions~%uint8 mission_exec_times  # 1: once ; 2: twice~%uint8 yaw_mode            # see constants above for possible yaw modes~%uint8 trace_mode          # see constants above for possible trace modes~%uint8 action_on_rc_lost   # see constants above for possible actions~%uint8 gimbal_pitch_mode   # see constants above for pissible gimbal modes~%MissionWaypoint[] mission_waypoint  # a vector of waypoints~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude          # degree~%float64 longitude         # degree~%float32 altitude          # relative altitude from takeoff point~%float32 damping_distance  # Bend length (effective coordinated turn mode only)~%int16 target_yaw          # Yaw (degree)~%int16 target_gimbal_pitch # Gimbal pitch~%uint8 turn_mode           # 0: clockwise, 1: counter-clockwise~%uint8 has_action          # 0: no, 1: yes~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%# action_repeat~%# lower 4 bit: Total number of actions~%# hight 4 bit: Total running times~%uint8 action_repeat~%uint8[16] command_list~%uint16[16] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWaypointTask>))
  (cl:+ 0
     4
     4
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_waypoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWaypointTask>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWaypointTask
    (cl:cons ':velocity_range (velocity_range msg))
    (cl:cons ':idle_velocity (idle_velocity msg))
    (cl:cons ':action_on_finish (action_on_finish msg))
    (cl:cons ':mission_exec_times (mission_exec_times msg))
    (cl:cons ':yaw_mode (yaw_mode msg))
    (cl:cons ':trace_mode (trace_mode msg))
    (cl:cons ':action_on_rc_lost (action_on_rc_lost msg))
    (cl:cons ':gimbal_pitch_mode (gimbal_pitch_mode msg))
    (cl:cons ':mission_waypoint (mission_waypoint msg))
))
