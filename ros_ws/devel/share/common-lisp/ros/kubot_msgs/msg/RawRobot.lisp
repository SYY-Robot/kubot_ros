; Auto-generated. Do not edit!


(cl:in-package kubot_msgs-msg)


;//! \htmlinclude RawRobot.msg.html

(cl:defclass <RawRobot> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bumper_status
    :reader bumper_status
    :initarg :bumper_status
    :type cl:boolean
    :initform cl:nil)
   (sona1_dis
    :reader sona1_dis
    :initarg :sona1_dis
    :type cl:fixnum
    :initform 0)
   (sona2_dis
    :reader sona2_dis
    :initarg :sona2_dis
    :type cl:fixnum
    :initform 0)
   (sona3_dis
    :reader sona3_dis
    :initarg :sona3_dis
    :type cl:fixnum
    :initform 0)
   (sona4_dis
    :reader sona4_dis
    :initarg :sona4_dis
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawRobot (<RawRobot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawRobot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawRobot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kubot_msgs-msg:<RawRobot> is deprecated: use kubot_msgs-msg:RawRobot instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:header-val is deprecated.  Use kubot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumper_status-val :lambda-list '(m))
(cl:defmethod bumper_status-val ((m <RawRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:bumper_status-val is deprecated.  Use kubot_msgs-msg:bumper_status instead.")
  (bumper_status m))

(cl:ensure-generic-function 'sona1_dis-val :lambda-list '(m))
(cl:defmethod sona1_dis-val ((m <RawRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:sona1_dis-val is deprecated.  Use kubot_msgs-msg:sona1_dis instead.")
  (sona1_dis m))

(cl:ensure-generic-function 'sona2_dis-val :lambda-list '(m))
(cl:defmethod sona2_dis-val ((m <RawRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:sona2_dis-val is deprecated.  Use kubot_msgs-msg:sona2_dis instead.")
  (sona2_dis m))

(cl:ensure-generic-function 'sona3_dis-val :lambda-list '(m))
(cl:defmethod sona3_dis-val ((m <RawRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:sona3_dis-val is deprecated.  Use kubot_msgs-msg:sona3_dis instead.")
  (sona3_dis m))

(cl:ensure-generic-function 'sona4_dis-val :lambda-list '(m))
(cl:defmethod sona4_dis-val ((m <RawRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:sona4_dis-val is deprecated.  Use kubot_msgs-msg:sona4_dis instead.")
  (sona4_dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawRobot>) ostream)
  "Serializes a message object of type '<RawRobot>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumper_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona1_dis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona2_dis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona3_dis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona4_dis)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawRobot>) istream)
  "Deserializes a message object of type '<RawRobot>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'bumper_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona1_dis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona2_dis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona3_dis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sona4_dis)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawRobot>)))
  "Returns string type for a message object of type '<RawRobot>"
  "kubot_msgs/RawRobot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawRobot)))
  "Returns string type for a message object of type 'RawRobot"
  "kubot_msgs/RawRobot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawRobot>)))
  "Returns md5sum for a message object of type '<RawRobot>"
  "509b6781cd16934dc0eb2392de02e97a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawRobot)))
  "Returns md5sum for a message object of type 'RawRobot"
  "509b6781cd16934dc0eb2392de02e97a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawRobot>)))
  "Returns full string definition for message of type '<RawRobot>"
  (cl:format cl:nil "Header header~%bool bumper_status~%uint8 sona1_dis~%uint8 sona2_dis~%uint8 sona3_dis~%uint8 sona4_dis~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawRobot)))
  "Returns full string definition for message of type 'RawRobot"
  (cl:format cl:nil "Header header~%bool bumper_status~%uint8 sona1_dis~%uint8 sona2_dis~%uint8 sona3_dis~%uint8 sona4_dis~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawRobot>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawRobot>))
  "Converts a ROS message object to a list"
  (cl:list 'RawRobot
    (cl:cons ':header (header msg))
    (cl:cons ':bumper_status (bumper_status msg))
    (cl:cons ':sona1_dis (sona1_dis msg))
    (cl:cons ':sona2_dis (sona2_dis msg))
    (cl:cons ':sona3_dis (sona3_dis msg))
    (cl:cons ':sona4_dis (sona4_dis msg))
))
