;; Auto-generated. Do not edit!


(when (boundp 'kubot_msgs::RawLed)
  (if (not (find-package "KUBOT_MSGS"))
    (make-package "KUBOT_MSGS"))
  (shadow 'RawLed (find-package "KUBOT_MSGS")))
(unless (find-package "KUBOT_MSGS::RAWLED")
  (make-package "KUBOT_MSGS::RAWLED"))

(in-package "ROS")
;;//! \htmlinclude RawLed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kubot_msgs::RawLed
  :super ros::object
  :slots (_header _set_ledNum _set_led_brightness _set_led_speed _set_led_color _set_led_mode ))

(defmethod kubot_msgs::RawLed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:set_ledNum __set_ledNum) 0)
    ((:set_led_brightness __set_led_brightness) 0)
    ((:set_led_speed __set_led_speed) 0)
    ((:set_led_color __set_led_color) 0)
    ((:set_led_mode __set_led_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _set_ledNum (round __set_ledNum))
   (setq _set_led_brightness (round __set_led_brightness))
   (setq _set_led_speed (round __set_led_speed))
   (setq _set_led_color (round __set_led_color))
   (setq _set_led_mode (round __set_led_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:set_ledNum
   (&optional __set_ledNum)
   (if __set_ledNum (setq _set_ledNum __set_ledNum)) _set_ledNum)
  (:set_led_brightness
   (&optional __set_led_brightness)
   (if __set_led_brightness (setq _set_led_brightness __set_led_brightness)) _set_led_brightness)
  (:set_led_speed
   (&optional __set_led_speed)
   (if __set_led_speed (setq _set_led_speed __set_led_speed)) _set_led_speed)
  (:set_led_color
   (&optional __set_led_color)
   (if __set_led_color (setq _set_led_color __set_led_color)) _set_led_color)
  (:set_led_mode
   (&optional __set_led_mode)
   (if __set_led_mode (setq _set_led_mode __set_led_mode)) _set_led_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _set_ledNum
    1
    ;; int8 _set_led_brightness
    1
    ;; int8 _set_led_speed
    1
    ;; int8 _set_led_color
    1
    ;; int8 _set_led_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _set_ledNum
       (write-byte _set_ledNum s)
     ;; int8 _set_led_brightness
       (write-byte _set_led_brightness s)
     ;; int8 _set_led_speed
       (write-byte _set_led_speed s)
     ;; int8 _set_led_color
       (write-byte _set_led_color s)
     ;; int8 _set_led_mode
       (write-byte _set_led_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _set_ledNum
     (setq _set_ledNum (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _set_ledNum 127) (setq _set_ledNum (- _set_ledNum 256)))
   ;; int8 _set_led_brightness
     (setq _set_led_brightness (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _set_led_brightness 127) (setq _set_led_brightness (- _set_led_brightness 256)))
   ;; int8 _set_led_speed
     (setq _set_led_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _set_led_speed 127) (setq _set_led_speed (- _set_led_speed 256)))
   ;; int8 _set_led_color
     (setq _set_led_color (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _set_led_color 127) (setq _set_led_color (- _set_led_color 256)))
   ;; int8 _set_led_mode
     (setq _set_led_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _set_led_mode 127) (setq _set_led_mode (- _set_led_mode 256)))
   ;;
   self)
  )

(setf (get kubot_msgs::RawLed :md5sum-) "ea5dba668be3a2d8b0e755084e1b5670")
(setf (get kubot_msgs::RawLed :datatype-) "kubot_msgs/RawLed")
(setf (get kubot_msgs::RawLed :definition-)
      "Header header
int8 set_ledNum
int8 set_led_brightness
int8 set_led_speed
int8 set_led_color
int8 set_led_mode


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
string frame_id

")



(provide :kubot_msgs/RawLed "ea5dba668be3a2d8b0e755084e1b5670")


