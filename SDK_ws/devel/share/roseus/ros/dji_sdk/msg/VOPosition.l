;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::VOPosition)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'VOPosition (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::VOPOSITION")
  (make-package "DJI_SDK::VOPOSITION"))

(in-package "ROS")
;;//! \htmlinclude VOPosition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::VOPosition
  :super ros::object
  :slots (_header _x _y _z _xHealth _yHealth _zHealth ))

(defmethod dji_sdk::VOPosition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:xHealth __xHealth) 0)
    ((:yHealth __yHealth) 0)
    ((:zHealth __zHealth) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _xHealth (round __xHealth))
   (setq _yHealth (round __yHealth))
   (setq _zHealth (round __zHealth))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:xHealth
   (&optional __xHealth)
   (if __xHealth (setq _xHealth __xHealth)) _xHealth)
  (:yHealth
   (&optional __yHealth)
   (if __yHealth (setq _yHealth __yHealth)) _yHealth)
  (:zHealth
   (&optional __zHealth)
   (if __zHealth (setq _zHealth __zHealth)) _zHealth)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; uint8 _xHealth
    1
    ;; uint8 _yHealth
    1
    ;; uint8 _zHealth
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _xHealth
       (write-byte _xHealth s)
     ;; uint8 _yHealth
       (write-byte _yHealth s)
     ;; uint8 _zHealth
       (write-byte _zHealth s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _xHealth
     (setq _xHealth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yHealth
     (setq _yHealth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _zHealth
     (setq _zHealth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::VOPosition :md5sum-) "6edcbd5875a94886d3601c7c54dba55d")
(setf (get dji_sdk::VOPosition :datatype-) "dji_sdk/VOPosition")
(setf (get dji_sdk::VOPosition :definition-)
      "Header header
float32 x
float32 y
float32 z
uint8   xHealth
uint8   yHealth
uint8   zHealth
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



(provide :dji_sdk/VOPosition "6edcbd5875a94886d3601c7c54dba55d")


