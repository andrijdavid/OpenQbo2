;; Auto-generated. Do not edit!


(when (boundp 'qbo_face_msgs::GetName)
  (if (not (find-package "QBO_FACE_MSGS"))
    (make-package "QBO_FACE_MSGS"))
  (shadow 'GetName (find-package "QBO_FACE_MSGS")))
(unless (find-package "QBO_FACE_MSGS::GETNAME")
  (make-package "QBO_FACE_MSGS::GETNAME"))
(unless (find-package "QBO_FACE_MSGS::GETNAMEREQUEST")
  (make-package "QBO_FACE_MSGS::GETNAMEREQUEST"))
(unless (find-package "QBO_FACE_MSGS::GETNAMERESPONSE")
  (make-package "QBO_FACE_MSGS::GETNAMERESPONSE"))

(in-package "ROS")





(defclass qbo_face_msgs::GetNameRequest
  :super ros::object
  :slots ())

(defmethod qbo_face_msgs::GetNameRequest
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

(defclass qbo_face_msgs::GetNameResponse
  :super ros::object
  :slots (_name _recognized ))

(defmethod qbo_face_msgs::GetNameResponse
  (:init
   (&key
    ((:name __name) "")
    ((:recognized __recognized) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _recognized __recognized)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:recognized
   (&optional __recognized)
   (if __recognized (setq _recognized __recognized)) _recognized)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _recognized
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _recognized
       (if _recognized (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _recognized
     (setq _recognized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_face_msgs::GetName
  :super ros::object
  :slots ())

(setf (get qbo_face_msgs::GetName :md5sum-) "cc831a68fd288fbc64ac133eede0b36f")
(setf (get qbo_face_msgs::GetName :datatype-) "qbo_face_msgs/GetName")
(setf (get qbo_face_msgs::GetName :request) qbo_face_msgs::GetNameRequest)
(setf (get qbo_face_msgs::GetName :response) qbo_face_msgs::GetNameResponse)

(defmethod qbo_face_msgs::GetNameRequest
  (:response () (instance qbo_face_msgs::GetNameResponse :init)))

(setf (get qbo_face_msgs::GetNameRequest :md5sum-) "cc831a68fd288fbc64ac133eede0b36f")
(setf (get qbo_face_msgs::GetNameRequest :datatype-) "qbo_face_msgs/GetNameRequest")
(setf (get qbo_face_msgs::GetNameRequest :definition-)
      "


















---
string name
bool recognized


")

(setf (get qbo_face_msgs::GetNameResponse :md5sum-) "cc831a68fd288fbc64ac133eede0b36f")
(setf (get qbo_face_msgs::GetNameResponse :datatype-) "qbo_face_msgs/GetNameResponse")
(setf (get qbo_face_msgs::GetNameResponse :definition-)
      "


















---
string name
bool recognized


")



(provide :qbo_face_msgs/GetName "cc831a68fd288fbc64ac133eede0b36f")


