;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Gimbal)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Gimbal (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GIMBAL")
  (make-package "DJI_SDK::GIMBAL"))

(in-package "ROS")
;;//! \htmlinclude Gimbal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::Gimbal
  :super ros::object
  :slots (_header _ts _mode _yaw _pitch _roll ))

(defmethod dji_sdk::Gimbal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:mode __mode) 0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _mode (round __mode))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ts
   (&optional __ts)
   (if __ts (setq _ts __ts)) _ts)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; uint8 _mode
    1
    ;; float32 _yaw
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ts
       (write-long _ts s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::Gimbal :md5sum-) "e914fc54aeccbeb342557d4bb7efa016")
(setf (get dji_sdk::Gimbal :datatype-) "dji_sdk/Gimbal")
(setf (get dji_sdk::Gimbal :definition-)
      "Header header
# ts is the time it takes to achieve the desired angle,
# so the shorter the time, the faster the gimbal rotates.
int32 ts        # sec

# Mode is 1 byte size:
# Bit #:      | Set to 0:                             | Set to 1:
# ----------- | ------------------------------------- | -------------------------------------
# bit 0       | Incremental control,                  | Absolute control,
#             | the angle reference is the            | the angle reference is
#             | current Gimbal location               | related to configuration in DJI Go App
# bit 1       | Gimbal will follow the command in Yaw | Gimbal will maintain position in Yaw
# bit 2       | Roll invalid bit, the same as bit[1]  | Roll invalid bit, the same as bit[1]
# bit 3       |Pitch invalid bit, the same as bit[1]  | Pitch invalid bit, the same as bit[1]
# bit [4:7]   | bit [4:7]: reserved, set to be 0      |
uint8 mode
float32 yaw     # rads
float32 pitch   # rads
float32 roll    # rads

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :dji_sdk/Gimbal "e914fc54aeccbeb342557d4bb7efa016")


