; Auto-generated. Do not edit!


(cl:in-package dnn_rotate-srv)


;//! \htmlinclude StringTrigger-request.msg.html

(cl:defclass <StringTrigger-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:string
    :initform ""))
)

(cl:defclass StringTrigger-request (<StringTrigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringTrigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringTrigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_rotate-srv:<StringTrigger-request> is deprecated: use dnn_rotate-srv:StringTrigger-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <StringTrigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_rotate-srv:object-val is deprecated.  Use dnn_rotate-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringTrigger-request>) ostream)
  "Serializes a message object of type '<StringTrigger-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringTrigger-request>) istream)
  "Deserializes a message object of type '<StringTrigger-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringTrigger-request>)))
  "Returns string type for a service object of type '<StringTrigger-request>"
  "dnn_rotate/StringTriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringTrigger-request)))
  "Returns string type for a service object of type 'StringTrigger-request"
  "dnn_rotate/StringTriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringTrigger-request>)))
  "Returns md5sum for a message object of type '<StringTrigger-request>"
  "da58e600b06edde376097686d032b550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringTrigger-request)))
  "Returns md5sum for a message object of type 'StringTrigger-request"
  "da58e600b06edde376097686d032b550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringTrigger-request>)))
  "Returns full string definition for message of type '<StringTrigger-request>"
  (cl:format cl:nil "string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringTrigger-request)))
  "Returns full string definition for message of type 'StringTrigger-request"
  (cl:format cl:nil "string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringTrigger-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringTrigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StringTrigger-request
    (cl:cons ':object (object msg))
))
;//! \htmlinclude StringTrigger-response.msg.html

(cl:defclass <StringTrigger-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass StringTrigger-response (<StringTrigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringTrigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringTrigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_rotate-srv:<StringTrigger-response> is deprecated: use dnn_rotate-srv:StringTrigger-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <StringTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_rotate-srv:response-val is deprecated.  Use dnn_rotate-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringTrigger-response>) ostream)
  "Serializes a message object of type '<StringTrigger-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringTrigger-response>) istream)
  "Deserializes a message object of type '<StringTrigger-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringTrigger-response>)))
  "Returns string type for a service object of type '<StringTrigger-response>"
  "dnn_rotate/StringTriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringTrigger-response)))
  "Returns string type for a service object of type 'StringTrigger-response"
  "dnn_rotate/StringTriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringTrigger-response>)))
  "Returns md5sum for a message object of type '<StringTrigger-response>"
  "da58e600b06edde376097686d032b550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringTrigger-response)))
  "Returns md5sum for a message object of type 'StringTrigger-response"
  "da58e600b06edde376097686d032b550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringTrigger-response>)))
  "Returns full string definition for message of type '<StringTrigger-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringTrigger-response)))
  "Returns full string definition for message of type 'StringTrigger-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringTrigger-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringTrigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StringTrigger-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StringTrigger)))
  'StringTrigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StringTrigger)))
  'StringTrigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringTrigger)))
  "Returns string type for a service object of type '<StringTrigger>"
  "dnn_rotate/StringTrigger")