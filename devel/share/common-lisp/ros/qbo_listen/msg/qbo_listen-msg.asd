
(cl:in-package :asdf)

(defsystem "qbo_listen-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Listened" :depends-on ("_package_Listened"))
    (:file "_package_Listened" :depends-on ("_package"))
  ))