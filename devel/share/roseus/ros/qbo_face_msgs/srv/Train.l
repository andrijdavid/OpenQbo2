;; Auto-generated. Do not edit!


(when (boundp 'qbo_face_msgs::Train)
  (if (not (find-package "QBO_FACE_MSGS"))
    (make-package "QBO_FACE_MSGS"))
  (shadow 'Train (find-package "QBO_FACE_MSGS")))
(unless (find-package "QBO_FACE_MSGS::TRAIN")
  (make-package "QBO_FACE_MSGS::TRAIN"))
(unless (find-package "QBO_FACE_MSGS::TRAINREQUEST")
  (make-package "QBO_FACE_MSGS::TRAINREQUEST"))
(unless (find-package "QBO_FACE_MSGS::TRAINRESPONSE")
  (make-package "QBO_FACE_MSGS::TRAINRESPONSE"))

(in-package "ROS")





(defclass qbo_face_msgs::TrainRequest
  :super ros::object
  :slots (_update_path ))

(defmethod qbo_face_msgs::TrainRequest
  (:init
   (&key
    ((:update_path __update_path) "")
    )
   (send-super :init)
   (setq _update_path (string __update_path))
   self)
  (:update_path
   (&optional __update_path)
   (if __update_path (setq _update_path __update_path)) _update_path)
  (:serialization-length
   ()
   (+
    ;; string _update_path
    4 (length _update_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _update_path
       (write-long (length _update_path) s) (princ _update_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _update_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qbo_face_msgs::TrainResponse
  :super ros::object
  :slots (_taught ))

(defmethod qbo_face_msgs::TrainResponse
  (:init
   (&key
    ((:taught __taught) nil)
    )
   (send-super :init)
   (setq _taught __taught)
   self)
  (:taught
   (&optional __taught)
   (if __taught (setq _taught __taught)) _taught)
  (:serialization-length
   ()
   (+
    ;; bool _taught
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _taught
       (if _taught (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _taught
     (setq _taught (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_face_msgs::Train
  :super ros::object
  :slots ())

(setf (get qbo_face_msgs::Train :md5sum-) "3f36036a94628f4a1bdb3c1a8d63219a")
(setf (get qbo_face_msgs::Train :datatype-) "qbo_face_msgs/Train")
(setf (get qbo_face_msgs::Train :request) qbo_face_msgs::TrainRequest)
(setf (get qbo_face_msgs::Train :response) qbo_face_msgs::TrainResponse)

(defmethod qbo_face_msgs::TrainRequest
  (:response () (instance qbo_face_msgs::TrainResponse :init)))

(setf (get qbo_face_msgs::TrainRequest :md5sum-) "3f36036a94628f4a1bdb3c1a8d63219a")
(setf (get qbo_face_msgs::TrainRequest :datatype-) "qbo_face_msgs/TrainRequest")
(setf (get qbo_face_msgs::TrainRequest :definition-)
      "


















string update_path
---
bool taught


")

(setf (get qbo_face_msgs::TrainResponse :md5sum-) "3f36036a94628f4a1bdb3c1a8d63219a")
(setf (get qbo_face_msgs::TrainResponse :datatype-) "qbo_face_msgs/TrainResponse")
(setf (get qbo_face_msgs::TrainResponse :definition-)
      "


















string update_path
---
bool taught


")



(provide :qbo_face_msgs/Train "3f36036a94628f4a1bdb3c1a8d63219a")


