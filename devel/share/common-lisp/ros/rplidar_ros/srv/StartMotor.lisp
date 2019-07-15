; Auto-generated. Do not edit!


(cl:in-package rplidar_ros-srv)


;//! \htmlinclude StartMotor-request.msg.html

(cl:defclass <StartMotor-request> (roslisp-msg-protocol:ros-message)
  ((pwm
    :reader pwm
    :initarg :pwm
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16)))
)

(cl:defclass StartMotor-request (<StartMotor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMotor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMotor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rplidar_ros-srv:<StartMotor-request> is deprecated: use rplidar_ros-srv:StartMotor-request instead.")))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <StartMotor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rplidar_ros-srv:pwm-val is deprecated.  Use rplidar_ros-srv:pwm instead.")
  (pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMotor-request>) ostream)
  "Serializes a message object of type '<StartMotor-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pwm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMotor-request>) istream)
  "Deserializes a message object of type '<StartMotor-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pwm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMotor-request>)))
  "Returns string type for a service object of type '<StartMotor-request>"
  "rplidar_ros/StartMotorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMotor-request)))
  "Returns string type for a service object of type 'StartMotor-request"
  "rplidar_ros/StartMotorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMotor-request>)))
  "Returns md5sum for a message object of type '<StartMotor-request>"
  "bd160db0cb9e838a10809e84d876d07a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMotor-request)))
  "Returns md5sum for a message object of type 'StartMotor-request"
  "bd160db0cb9e838a10809e84d876d07a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMotor-request>)))
  "Returns full string definition for message of type '<StartMotor-request>"
  (cl:format cl:nil "std_msgs/UInt16 pwm~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMotor-request)))
  "Returns full string definition for message of type 'StartMotor-request"
  (cl:format cl:nil "std_msgs/UInt16 pwm~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMotor-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pwm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMotor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMotor-request
    (cl:cons ':pwm (pwm msg))
))
;//! \htmlinclude StartMotor-response.msg.html

(cl:defclass <StartMotor-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartMotor-response (<StartMotor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMotor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMotor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rplidar_ros-srv:<StartMotor-response> is deprecated: use rplidar_ros-srv:StartMotor-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMotor-response>) ostream)
  "Serializes a message object of type '<StartMotor-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMotor-response>) istream)
  "Deserializes a message object of type '<StartMotor-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMotor-response>)))
  "Returns string type for a service object of type '<StartMotor-response>"
  "rplidar_ros/StartMotorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMotor-response)))
  "Returns string type for a service object of type 'StartMotor-response"
  "rplidar_ros/StartMotorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMotor-response>)))
  "Returns md5sum for a message object of type '<StartMotor-response>"
  "bd160db0cb9e838a10809e84d876d07a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMotor-response)))
  "Returns md5sum for a message object of type 'StartMotor-response"
  "bd160db0cb9e838a10809e84d876d07a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMotor-response>)))
  "Returns full string definition for message of type '<StartMotor-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMotor-response)))
  "Returns full string definition for message of type 'StartMotor-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMotor-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMotor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMotor-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartMotor)))
  'StartMotor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartMotor)))
  'StartMotor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMotor)))
  "Returns string type for a service object of type '<StartMotor>"
  "rplidar_ros/StartMotor")