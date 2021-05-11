; Auto-generated. Do not edit!


(cl:in-package kubot_msgs-msg)


;//! \htmlinclude RawLed.msg.html

(cl:defclass <RawLed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (set_ledNum
    :reader set_ledNum
    :initarg :set_ledNum
    :type cl:fixnum
    :initform 0)
   (set_led_brightness
    :reader set_led_brightness
    :initarg :set_led_brightness
    :type cl:fixnum
    :initform 0)
   (set_led_speed
    :reader set_led_speed
    :initarg :set_led_speed
    :type cl:fixnum
    :initform 0)
   (set_led_color
    :reader set_led_color
    :initarg :set_led_color
    :type cl:fixnum
    :initform 0)
   (set_led_mode
    :reader set_led_mode
    :initarg :set_led_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawLed (<RawLed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawLed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawLed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kubot_msgs-msg:<RawLed> is deprecated: use kubot_msgs-msg:RawLed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawLed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:header-val is deprecated.  Use kubot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'set_ledNum-val :lambda-list '(m))
(cl:defmethod set_ledNum-val ((m <RawLed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:set_ledNum-val is deprecated.  Use kubot_msgs-msg:set_ledNum instead.")
  (set_ledNum m))

(cl:ensure-generic-function 'set_led_brightness-val :lambda-list '(m))
(cl:defmethod set_led_brightness-val ((m <RawLed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:set_led_brightness-val is deprecated.  Use kubot_msgs-msg:set_led_brightness instead.")
  (set_led_brightness m))

(cl:ensure-generic-function 'set_led_speed-val :lambda-list '(m))
(cl:defmethod set_led_speed-val ((m <RawLed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:set_led_speed-val is deprecated.  Use kubot_msgs-msg:set_led_speed instead.")
  (set_led_speed m))

(cl:ensure-generic-function 'set_led_color-val :lambda-list '(m))
(cl:defmethod set_led_color-val ((m <RawLed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:set_led_color-val is deprecated.  Use kubot_msgs-msg:set_led_color instead.")
  (set_led_color m))

(cl:ensure-generic-function 'set_led_mode-val :lambda-list '(m))
(cl:defmethod set_led_mode-val ((m <RawLed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kubot_msgs-msg:set_led_mode-val is deprecated.  Use kubot_msgs-msg:set_led_mode instead.")
  (set_led_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawLed>) ostream)
  "Serializes a message object of type '<RawLed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'set_ledNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'set_led_brightness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'set_led_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'set_led_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'set_led_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawLed>) istream)
  "Deserializes a message object of type '<RawLed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_ledNum) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_led_brightness) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_led_speed) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_led_color) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_led_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawLed>)))
  "Returns string type for a message object of type '<RawLed>"
  "kubot_msgs/RawLed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawLed)))
  "Returns string type for a message object of type 'RawLed"
  "kubot_msgs/RawLed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawLed>)))
  "Returns md5sum for a message object of type '<RawLed>"
  "ea5dba668be3a2d8b0e755084e1b5670")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawLed)))
  "Returns md5sum for a message object of type 'RawLed"
  "ea5dba668be3a2d8b0e755084e1b5670")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawLed>)))
  "Returns full string definition for message of type '<RawLed>"
  (cl:format cl:nil "Header header~%int8 set_ledNum~%int8 set_led_brightness~%int8 set_led_speed~%int8 set_led_color~%int8 set_led_mode~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawLed)))
  "Returns full string definition for message of type 'RawLed"
  (cl:format cl:nil "Header header~%int8 set_ledNum~%int8 set_led_brightness~%int8 set_led_speed~%int8 set_led_color~%int8 set_led_mode~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawLed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawLed>))
  "Converts a ROS message object to a list"
  (cl:list 'RawLed
    (cl:cons ':header (header msg))
    (cl:cons ':set_ledNum (set_ledNum msg))
    (cl:cons ':set_led_brightness (set_led_brightness msg))
    (cl:cons ':set_led_speed (set_led_speed msg))
    (cl:cons ':set_led_color (set_led_color msg))
    (cl:cons ':set_led_mode (set_led_mode msg))
))
