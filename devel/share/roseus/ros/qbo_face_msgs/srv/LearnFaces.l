;; Auto-generated. Do not edit!


(when (boundp 'qbo_face_msgs::LearnFaces)
  (if (not (find-package "QBO_FACE_MSGS"))
    (make-package "QBO_FACE_MSGS"))
  (shadow 'LearnFaces (find-package "QBO_FACE_MSGS")))
(unless (find-package "QBO_FACE_MSGS::LEARNFACES")
  (make-package "QBO_FACE_MSGS::LEARNFACES"))
(unless (find-package "QBO_FACE_MSGS::LEARNFACESREQUEST")
  (make-package "QBO_FACE_MSGS::LEARNFACESREQUEST"))
(unless (find-package "QBO_FACE_MSGS::LEARNFACESRESPONSE")
  (make-package "QBO_FACE_MSGS::LEARNFACESRESPONSE"))

(in-package "ROS")





(defclass qbo_face_msgs::LearnFacesRequest
  :super ros::object
  :slots (_person_name ))

(defmethod qbo_face_msgs::LearnFacesRequest
  (:init
   (&key
    ((:person_name __person_name) "")
    )
   (send-super :init)
   (setq _person_name (string __person_name))
   self)
  (:person_name
   (&optional __person_name)
   (if __person_name (setq _person_name __person_name)) _person_name)
  (:serialization-length
   ()
   (+
    ;; string _person_name
    4 (length _person_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _person_name
       (write-long (length _person_name) s) (princ _person_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _person_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _person_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qbo_face_msgs::LearnFacesResponse
  :super ros::object
  :slots (_learned ))

(defmethod qbo_face_msgs::LearnFacesResponse
  (:init
   (&key
    ((:learned __learned) nil)
    )
   (send-super :init)
   (setq _learned __learned)
   self)
  (:learned
   (&optional __learned)
   (if __learned (setq _learned __learned)) _learned)
  (:serialization-length
   ()
   (+
    ;; bool _learned
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _learned
       (if _learned (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _learned
     (setq _learned (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_face_msgs::LearnFaces
  :super ros::object
  :slots ())

(setf (get qbo_face_msgs::LearnFaces :md5sum-) "202b3c7a0bdc1cb06c9cb185e964b34a")
(setf (get qbo_face_msgs::LearnFaces :datatype-) "qbo_face_msgs/LearnFaces")
(setf (get qbo_face_msgs::LearnFaces :request) qbo_face_msgs::LearnFacesRequest)
(setf (get qbo_face_msgs::LearnFaces :response) qbo_face_msgs::LearnFacesResponse)

(defmethod qbo_face_msgs::LearnFacesRequest
  (:response () (instance qbo_face_msgs::LearnFacesResponse :init)))

(setf (get qbo_face_msgs::LearnFacesRequest :md5sum-) "202b3c7a0bdc1cb06c9cb185e964b34a")
(setf (get qbo_face_msgs::LearnFacesRequest :datatype-) "qbo_face_msgs/LearnFacesRequest")
(setf (get qbo_face_msgs::LearnFacesRequest :definition-)
      "


















string person_name
---
bool learned

")

(setf (get qbo_face_msgs::LearnFacesResponse :md5sum-) "202b3c7a0bdc1cb06c9cb185e964b34a")
(setf (get qbo_face_msgs::LearnFacesResponse :datatype-) "qbo_face_msgs/LearnFacesResponse")
(setf (get qbo_face_msgs::LearnFacesResponse :definition-)
      "


















string person_name
---
bool learned

")



(provide :qbo_face_msgs/LearnFaces "202b3c7a0bdc1cb06c9cb185e964b34a")


