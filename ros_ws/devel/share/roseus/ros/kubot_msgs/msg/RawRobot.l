;; Auto-generated. Do not edit!


(when (boundp 'kubot_msgs::RawRobot)
  (if (not (find-package "KUBOT_MSGS"))
    (make-package "KUBOT_MSGS"))
  (shadow 'RawRobot (find-package "KUBOT_MSGS")))
(unless (find-package "KUBOT_MSGS::RAWROBOT")
  (make-package "KUBOT_MSGS::RAWROBOT"))

(in-package "ROS")
;;//! \htmlinclude RawRobot.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kubot_msgs::RawRobot
  :super ros::object
  :slots (_header _bumper_status _sona1_dis _sona2_dis _sona3_dis _sona4_dis ))

(defmethod kubot_msgs::RawRobot
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumper_status __bumper_status) nil)
    ((:sona1_dis __sona1_dis) 0)
    ((:sona2_dis __sona2_dis) 0)
    ((:sona3_dis __sona3_dis) 0)
    ((:sona4_dis __sona4_dis) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumper_status __bumper_status)
   (setq _sona1_dis (round __sona1_dis))
   (setq _sona2_dis (round __sona2_dis))
   (setq _sona3_dis (round __sona3_dis))
   (setq _sona4_dis (round __sona4_dis))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bumper_status
   (&optional __bumper_status)
   (if __bumper_status (setq _bumper_status __bumper_status)) _bumper_status)
  (:sona1_dis
   (&optional __sona1_dis)
   (if __sona1_dis (setq _sona1_dis __sona1_dis)) _sona1_dis)
  (:sona2_dis
   (&optional __sona2_dis)
   (if __sona2_dis (setq _sona2_dis __sona2_dis)) _sona2_dis)
  (:sona3_dis
   (&optional __sona3_dis)
   (if __sona3_dis (setq _sona3_dis __sona3_dis)) _sona3_dis)
  (:sona4_dis
   (&optional __sona4_dis)
   (if __sona4_dis (setq _sona4_dis __sona4_dis)) _sona4_dis)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _bumper_status
    1
    ;; uint8 _sona1_dis
    1
    ;; uint8 _sona2_dis
    1
    ;; uint8 _sona3_dis
    1
    ;; uint8 _sona4_dis
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _bumper_status
       (if _bumper_status (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _sona1_dis
       (write-byte _sona1_dis s)
     ;; uint8 _sona2_dis
       (write-byte _sona2_dis s)
     ;; uint8 _sona3_dis
       (write-byte _sona3_dis s)
     ;; uint8 _sona4_dis
       (write-byte _sona4_dis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _bumper_status
     (setq _bumper_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _sona1_dis
     (setq _sona1_dis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sona2_dis
     (setq _sona2_dis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sona3_dis
     (setq _sona3_dis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sona4_dis
     (setq _sona4_dis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kubot_msgs::RawRobot :md5sum-) "509b6781cd16934dc0eb2392de02e97a")
(setf (get kubot_msgs::RawRobot :datatype-) "kubot_msgs/RawRobot")
(setf (get kubot_msgs::RawRobot :definition-)
      "Header header
bool bumper_status
uint8 sona1_dis
uint8 sona2_dis
uint8 sona3_dis
uint8 sona4_dis

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



(provide :kubot_msgs/RawRobot "509b6781cd16934dc0eb2392de02e97a")


