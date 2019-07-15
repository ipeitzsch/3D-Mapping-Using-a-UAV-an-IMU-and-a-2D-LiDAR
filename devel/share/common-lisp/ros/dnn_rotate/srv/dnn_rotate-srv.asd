
(cl:in-package :asdf)

(defsystem "dnn_rotate-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StringTrigger" :depends-on ("_package_StringTrigger"))
    (:file "_package_StringTrigger" :depends-on ("_package"))
  ))