; Auto-generated. Do not edit!


(cl:in-package nmea_msgs-msg)


;//! \htmlinclude Sentence.msg.html

(cl:defclass <Sentence> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sentence
    :reader sentence
    :initarg :sentence
    :type cl:string
    :initform ""))
)

(cl:defclass Sentence (<Sentence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sentence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sentence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nmea_msgs-msg:<Sentence> is deprecated: use nmea_msgs-msg:Sentence instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Sentence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nmea_msgs-msg:header-val is deprecated.  Use nmea_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sentence-val :lambda-list '(m))
(cl:defmethod sentence-val ((m <Sentence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nmea_msgs-msg:sentence-val is deprecated.  Use nmea_msgs-msg:sentence instead.")
  (sentence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sentence>) ostream)
  "Serializes a message object of type '<Sentence>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sentence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sentence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sentence>) istream)
  "Deserializes a message object of type '<Sentence>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sentence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sentence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sentence>)))
  "Returns string type for a message object of type '<Sentence>"
  "nmea_msgs/Sentence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sentence)))
  "Returns string type for a message object of type 'Sentence"
  "nmea_msgs/Sentence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sentence>)))
  "Returns md5sum for a message object of type '<Sentence>"
  "9f221efc5f4b3bac7ce4af102b32308b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sentence)))
  "Returns md5sum for a message object of type 'Sentence"
  "9f221efc5f4b3bac7ce4af102b32308b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sentence>)))
  "Returns full string definition for message of type '<Sentence>"
  (cl:format cl:nil "# A message representing a single NMEA0183 sentence.~%~%# header.stamp is the ROS Time when the sentence was read.~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# This should only contain ASCII characters in order to be a valid NMEA0183 sentence.~%string sentence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sentence)))
  "Returns full string definition for message of type 'Sentence"
  (cl:format cl:nil "# A message representing a single NMEA0183 sentence.~%~%# header.stamp is the ROS Time when the sentence was read.~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# This should only contain ASCII characters in order to be a valid NMEA0183 sentence.~%string sentence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sentence>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'sentence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sentence>))
  "Converts a ROS message object to a list"
  (cl:list 'Sentence
    (cl:cons ':header (header msg))
    (cl:cons ':sentence (sentence msg))
))
