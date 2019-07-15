
(cl:in-package :asdf)

(defsystem "rplidar_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StartMotor" :depends-on ("_package_StartMotor"))
    (:file "_package_StartMotor" :depends-on ("_package"))
  ))