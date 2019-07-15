;; Auto-generated. Do not edit!


(when (boundp 'dnn_rotate::StringTrigger)
  (if (not (find-package "DNN_ROTATE"))
    (make-package "DNN_ROTATE"))
  (shadow 'StringTrigger (find-package "DNN_ROTATE")))
(unless (find-package "DNN_ROTATE::STRINGTRIGGER")
  (make-package "DNN_ROTATE::STRINGTRIGGER"))
(unless (find-package "DNN_ROTATE::STRINGTRIGGERREQUEST")
  (make-package "DNN_ROTATE::STRINGTRIGGERREQUEST"))
(unless (find-package "DNN_ROTATE::STRINGTRIGGERRESPONSE")
  (make-package "DNN_ROTATE::STRINGTRIGGERRESPONSE"))

(in-package "ROS")





(defclass dnn_rotate::StringTriggerRequest
  :super ros::object
  :slots (_object ))

(defmethod dnn_rotate::StringTriggerRequest
  (:init
   (&key
    ((:object __object) "")
    )
   (send-super :init)
   (setq _object (string __object))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dnn_rotate::StringTriggerResponse
  :super ros::object
  :slots (_response ))

(defmethod dnn_rotate::StringTriggerResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dnn_rotate::StringTrigger
  :super ros::object
  :slots ())

(setf (get dnn_rotate::StringTrigger :md5sum-) "da58e600b06edde376097686d032b550")
(setf (get dnn_rotate::StringTrigger :datatype-) "dnn_rotate/StringTrigger")
(setf (get dnn_rotate::StringTrigger :request) dnn_rotate::StringTriggerRequest)
(setf (get dnn_rotate::StringTrigger :response) dnn_rotate::StringTriggerResponse)

(defmethod dnn_rotate::StringTriggerRequest
  (:response () (instance dnn_rotate::StringTriggerResponse :init)))

(setf (get dnn_rotate::StringTriggerRequest :md5sum-) "da58e600b06edde376097686d032b550")
(setf (get dnn_rotate::StringTriggerRequest :datatype-) "dnn_rotate/StringTriggerRequest")
(setf (get dnn_rotate::StringTriggerRequest :definition-)
      "string object
---
string response

")

(setf (get dnn_rotate::StringTriggerResponse :md5sum-) "da58e600b06edde376097686d032b550")
(setf (get dnn_rotate::StringTriggerResponse :datatype-) "dnn_rotate/StringTriggerResponse")
(setf (get dnn_rotate::StringTriggerResponse :definition-)
      "string object
---
string response

")



(provide :dnn_rotate/StringTrigger "da58e600b06edde376097686d032b550")


