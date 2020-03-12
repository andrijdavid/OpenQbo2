
(cl:in-package :asdf)

(defsystem "qbo_face_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "" :depends-on ("_package_"))
    (:file "_package_" :depends-on ("_package"))
    (:file "RecognizeFace" :depends-on ("_package_RecognizeFace"))
    (:file "_package_RecognizeFace" :depends-on ("_package"))
    (:file "LearnFaces" :depends-on ("_package_LearnFaces"))
    (:file "_package_LearnFaces" :depends-on ("_package"))
    (:file "GetName" :depends-on ("_package_GetName"))
    (:file "_package_GetName" :depends-on ("_package"))
    (:file "Train" :depends-on ("_package_Train"))
    (:file "_package_Train" :depends-on ("_package"))
  ))