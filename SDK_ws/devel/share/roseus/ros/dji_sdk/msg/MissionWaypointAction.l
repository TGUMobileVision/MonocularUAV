;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWaypointAction)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWaypointAction (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWAYPOINTACTION")
  (make-package "DJI_SDK::MISSIONWAYPOINTACTION"))

(in-package "ROS")
;;//! \htmlinclude MissionWaypointAction.msg.html


(defclass dji_sdk::MissionWaypointAction
  :super ros::object
  :slots (_action_repeat _command_list _command_parameter ))

(defmethod dji_sdk::MissionWaypointAction
  (:init
   (&key
    ((:action_repeat __action_repeat) 0)
    ((:command_list __command_list) (make-array 16 :initial-element 0 :element-type :char))
    ((:command_parameter __command_parameter) (make-array 16 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _action_repeat (round __action_repeat))
   (setq _command_list __command_list)
   (setq _command_parameter __command_parameter)
   self)
  (:action_repeat
   (&optional __action_repeat)
   (if __action_repeat (setq _action_repeat __action_repeat)) _action_repeat)
  (:command_list
   (&optional __command_list)
   (if __command_list (setq _command_list __command_list)) _command_list)
  (:command_parameter
   (&optional __command_parameter)
   (if __command_parameter (setq _command_parameter __command_parameter)) _command_parameter)
  (:serialization-length
   ()
   (+
    ;; uint8 _action_repeat
    1
    ;; uint8[16] _command_list
    (* 1    16)
    ;; uint16[16] _command_parameter
    (* 2    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action_repeat
       (write-byte _action_repeat s)
     ;; uint8[16] _command_list
     (princ _command_list s)
     ;; uint16[16] _command_parameter
     (dotimes (i 16)
       (write-word (elt _command_parameter i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action_repeat
     (setq _action_repeat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[16] _command_list
   (setq _command_list (make-array 16 :element-type :char))
   (replace _command_list buf :start2 ptr-) (incf ptr- 16)
   ;; uint16[16] _command_parameter
   (dotimes (i (length _command_parameter))
     (setf (elt _command_parameter i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get dji_sdk::MissionWaypointAction :md5sum-) "940a2c85852b1259dcafa1d9b9ce78fd")
(setf (get dji_sdk::MissionWaypointAction :datatype-) "dji_sdk/MissionWaypointAction")
(setf (get dji_sdk::MissionWaypointAction :definition-)
      "# action_repeat
# lower 4 bit: Total number of actions
# hight 4 bit: Total running times
uint8 action_repeat
uint8[16] command_list
uint16[16] command_parameter

")



(provide :dji_sdk/MissionWaypointAction "940a2c85852b1259dcafa1d9b9ce78fd")


