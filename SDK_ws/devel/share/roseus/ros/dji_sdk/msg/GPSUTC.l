;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::GPSUTC)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'GPSUTC (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GPSUTC")
  (make-package "DJI_SDK::GPSUTC"))

(in-package "ROS")
;;//! \htmlinclude GPSUTC.msg.html


(defclass dji_sdk::GPSUTC
  :super ros::object
  :slots (_stamp _UTCTimeData ))

(defmethod dji_sdk::GPSUTC
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:UTCTimeData __UTCTimeData) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _UTCTimeData (string __UTCTimeData))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:UTCTimeData
   (&optional __UTCTimeData)
   (if __UTCTimeData (setq _UTCTimeData __UTCTimeData)) _UTCTimeData)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _UTCTimeData
    4 (length _UTCTimeData)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _UTCTimeData
       (write-long (length _UTCTimeData) s) (princ _UTCTimeData s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _UTCTimeData
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _UTCTimeData (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dji_sdk::GPSUTC :md5sum-) "034c4baeda26125f91567e2717d1cf5b")
(setf (get dji_sdk::GPSUTC :datatype-) "dji_sdk/GPSUTC")
(setf (get dji_sdk::GPSUTC :definition-)
      "# the time stamp of getting this data in the ROS system
time stamp

# the time stamp from GPS/RTK
string UTCTimeData

")



(provide :dji_sdk/GPSUTC "034c4baeda26125f91567e2717d1cf5b")


