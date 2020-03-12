;; Auto-generated. Do not edit!


(when (boundp 'qbo_listen::free_train)
  (if (not (find-package "QBO_LISTEN"))
    (make-package "QBO_LISTEN"))
  (shadow 'free_train (find-package "QBO_LISTEN")))
(unless (find-package "QBO_LISTEN::FREE_TRAIN")
  (make-package "QBO_LISTEN::FREE_TRAIN"))
(unless (find-package "QBO_LISTEN::FREE_TRAINREQUEST")
  (make-package "QBO_LISTEN::FREE_TRAINREQUEST"))
(unless (find-package "QBO_LISTEN::FREE_TRAINRESPONSE")
  (make-package "QBO_LISTEN::FREE_TRAINRESPONSE"))

(in-package "ROS")





(defclass qbo_listen::free_trainRequest
  :super ros::object
  :slots ())

(defmethod qbo_listen::free_trainRequest
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

(defclass qbo_listen::free_trainResponse
  :super ros::object
  :slots (_ok ))

(defmethod qbo_listen::free_trainResponse
  (:init
   (&key
    ((:ok __ok) 0)
    )
   (send-super :init)
   (setq _ok (round __ok))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; int8 _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ok
       (write-byte _ok s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ok
     (setq _ok (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ok 127) (setq _ok (- _ok 256)))
   ;;
   self)
  )

(defclass qbo_listen::free_train
  :super ros::object
  :slots ())

(setf (get qbo_listen::free_train :md5sum-) "719c501bbbeb289704ee5d42501844db")
(setf (get qbo_listen::free_train :datatype-) "qbo_listen/free_train")
(setf (get qbo_listen::free_train :request) qbo_listen::free_trainRequest)
(setf (get qbo_listen::free_train :response) qbo_listen::free_trainResponse)

(defmethod qbo_listen::free_trainRequest
  (:response () (instance qbo_listen::free_trainResponse :init)))

(setf (get qbo_listen::free_trainRequest :md5sum-) "719c501bbbeb289704ee5d42501844db")
(setf (get qbo_listen::free_trainRequest :datatype-) "qbo_listen/free_trainRequest")
(setf (get qbo_listen::free_trainRequest :definition-)
      "---
int8 ok

")

(setf (get qbo_listen::free_trainResponse :md5sum-) "719c501bbbeb289704ee5d42501844db")
(setf (get qbo_listen::free_trainResponse :datatype-) "qbo_listen/free_trainResponse")
(setf (get qbo_listen::free_trainResponse :definition-)
      "---
int8 ok

")



(provide :qbo_listen/free_train "719c501bbbeb289704ee5d42501844db")


