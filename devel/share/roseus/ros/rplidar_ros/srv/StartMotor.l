;; Auto-generated. Do not edit!


(when (boundp 'rplidar_ros::StartMotor)
  (if (not (find-package "RPLIDAR_ROS"))
    (make-package "RPLIDAR_ROS"))
  (shadow 'StartMotor (find-package "RPLIDAR_ROS")))
(unless (find-package "RPLIDAR_ROS::STARTMOTOR")
  (make-package "RPLIDAR_ROS::STARTMOTOR"))
(unless (find-package "RPLIDAR_ROS::STARTMOTORREQUEST")
  (make-package "RPLIDAR_ROS::STARTMOTORREQUEST"))
(unless (find-package "RPLIDAR_ROS::STARTMOTORRESPONSE")
  (make-package "RPLIDAR_ROS::STARTMOTORRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass rplidar_ros::StartMotorRequest
  :super ros::object
  :slots (_pwm ))

(defmethod rplidar_ros::StartMotorRequest
  (:init
   (&key
    ((:pwm __pwm) (instance std_msgs::UInt16 :init))
    )
   (send-super :init)
   (setq _pwm __pwm)
   self)
  (:pwm
   (&rest __pwm)
   (if (keywordp (car __pwm))
       (send* _pwm __pwm)
     (progn
       (if __pwm (setq _pwm (car __pwm)))
       _pwm)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/UInt16 _pwm
    (send _pwm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/UInt16 _pwm
       (send _pwm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/UInt16 _pwm
     (send _pwm :deserialize buf ptr-) (incf ptr- (send _pwm :serialization-length))
   ;;
   self)
  )

(defclass rplidar_ros::StartMotorResponse
  :super ros::object
  :slots ())

(defmethod rplidar_ros::StartMotorResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rplidar_ros::StartMotor
  :super ros::object
  :slots ())

(setf (get rplidar_ros::StartMotor :md5sum-) "bd160db0cb9e838a10809e84d876d07a")
(setf (get rplidar_ros::StartMotor :datatype-) "rplidar_ros/StartMotor")
(setf (get rplidar_ros::StartMotor :request) rplidar_ros::StartMotorRequest)
(setf (get rplidar_ros::StartMotor :response) rplidar_ros::StartMotorResponse)

(defmethod rplidar_ros::StartMotorRequest
  (:response () (instance rplidar_ros::StartMotorResponse :init)))

(setf (get rplidar_ros::StartMotorRequest :md5sum-) "bd160db0cb9e838a10809e84d876d07a")
(setf (get rplidar_ros::StartMotorRequest :datatype-) "rplidar_ros/StartMotorRequest")
(setf (get rplidar_ros::StartMotorRequest :definition-)
      "std_msgs/UInt16 pwm

================================================================================
MSG: std_msgs/UInt16
uint16 data
---

")

(setf (get rplidar_ros::StartMotorResponse :md5sum-) "bd160db0cb9e838a10809e84d876d07a")
(setf (get rplidar_ros::StartMotorResponse :datatype-) "rplidar_ros/StartMotorResponse")
(setf (get rplidar_ros::StartMotorResponse :definition-)
      "std_msgs/UInt16 pwm

================================================================================
MSG: std_msgs/UInt16
uint16 data
---

")



(provide :rplidar_ros/StartMotor "bd160db0cb9e838a10809e84d876d07a")


