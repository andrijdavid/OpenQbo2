
(cl:in-package :asdf)

(defsystem "qbo_face_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FacePosAndDist" :depends-on ("_package_FacePosAndDist"))
    (:file "_package_FacePosAndDist" :depends-on ("_package"))
  ))