
(cl:in-package :asdf)

(defsystem "kubot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RawImu" :depends-on ("_package_RawImu"))
    (:file "_package_RawImu" :depends-on ("_package"))
    (:file "RawLed" :depends-on ("_package_RawLed"))
    (:file "_package_RawLed" :depends-on ("_package"))
    (:file "RawRobot" :depends-on ("_package_RawRobot"))
    (:file "_package_RawRobot" :depends-on ("_package"))
  ))