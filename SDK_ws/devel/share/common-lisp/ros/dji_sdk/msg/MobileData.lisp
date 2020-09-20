; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MobileData.msg.html

(cl:defclass <MobileData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MobileData (<MobileData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MobileData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MobileData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MobileData> is deprecated: use dji_sdk-msg:MobileData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MobileData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data-val is deprecated.  Use dji_sdk-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MobileData>) ostream)
  "Serializes a message object of type '<MobileData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MobileData>) istream)
  "Deserializes a message object of type '<MobileData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MobileData>)))
  "Returns string type for a message object of type '<MobileData>"
  "dji_sdk/MobileData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MobileData)))
  "Returns string type for a message object of type 'MobileData"
  "dji_sdk/MobileData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MobileData>)))
  "Returns md5sum for a message object of type '<MobileData>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MobileData)))
  "Returns md5sum for a message object of type 'MobileData"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MobileData>)))
  "Returns full string definition for message of type '<MobileData>"
  (cl:format cl:nil "uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MobileData)))
  "Returns full string definition for message of type 'MobileData"
  (cl:format cl:nil "uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MobileData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MobileData>))
  "Converts a ROS message object to a list"
  (cl:list 'MobileData
    (cl:cons ':data (data msg))
))
