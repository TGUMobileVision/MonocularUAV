;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::FCTimeInUTC)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'FCTimeInUTC (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::FCTIMEINUTC")
  (make-package "DJI_SDK::FCTIMEINUTC"))

(in-package "ROS")
;;//! \htmlinclude FCTimeInUTC.msg.html


(defclass dji_sdk::FCTimeInUTC
  :super ros::object
  :slots (_stamp _fc_timestamp_us _fc_utc_yymmdd _fc_utc_hhmmss ))

(defmethod dji_sdk::FCTimeInUTC
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:fc_timestamp_us __fc_timestamp_us) 0)
    ((:fc_utc_yymmdd __fc_utc_yymmdd) 0)
    ((:fc_utc_hhmmss __fc_utc_hhmmss) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _fc_timestamp_us (round __fc_timestamp_us))
   (setq _fc_utc_yymmdd (round __fc_utc_yymmdd))
   (setq _fc_utc_hhmmss (round __fc_utc_hhmmss))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:fc_timestamp_us
   (&optional __fc_timestamp_us)
   (if __fc_timestamp_us (setq _fc_timestamp_us __fc_timestamp_us)) _fc_timestamp_us)
  (:fc_utc_yymmdd
   (&optional __fc_utc_yymmdd)
   (if __fc_utc_yymmdd (setq _fc_utc_yymmdd __fc_utc_yymmdd)) _fc_utc_yymmdd)
  (:fc_utc_hhmmss
   (&optional __fc_utc_hhmmss)
   (if __fc_utc_hhmmss (setq _fc_utc_hhmmss __fc_utc_hhmmss)) _fc_utc_hhmmss)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _fc_timestamp_us
    4
    ;; uint32 _fc_utc_yymmdd
    4
    ;; uint32 _fc_utc_hhmmss
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _fc_timestamp_us
       (write-long _fc_timestamp_us s)
     ;; uint32 _fc_utc_yymmdd
       (write-long _fc_utc_yymmdd s)
     ;; uint32 _fc_utc_hhmmss
       (write-long _fc_utc_hhmmss s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fc_timestamp_us
     (setq _fc_timestamp_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fc_utc_yymmdd
     (setq _fc_utc_yymmdd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fc_utc_hhmmss
     (setq _fc_utc_hhmmss (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::FCTimeInUTC :md5sum-) "46bad377c3e8bc271c70f3dffa21d6ab")
(setf (get dji_sdk::FCTimeInUTC :datatype-) "dji_sdk/FCTimeInUTC")
(setf (get dji_sdk::FCTimeInUTC :definition-)
      "# the time stamp of getting this data in the ROS system
time stamp

# the time stamp in FC
uint32 fc_timestamp_us
uint32 fc_utc_yymmdd
uint32 fc_utc_hhmmss

")



(provide :dji_sdk/FCTimeInUTC "46bad377c3e8bc271c70f3dffa21d6ab")


