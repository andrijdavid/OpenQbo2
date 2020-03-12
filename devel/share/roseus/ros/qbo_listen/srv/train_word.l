;; Auto-generated. Do not edit!


(when (boundp 'qbo_listen::train_word)
  (if (not (find-package "QBO_LISTEN"))
    (make-package "QBO_LISTEN"))
  (shadow 'train_word (find-package "QBO_LISTEN")))
(unless (find-package "QBO_LISTEN::TRAIN_WORD")
  (make-package "QBO_LISTEN::TRAIN_WORD"))
(unless (find-package "QBO_LISTEN::TRAIN_WORDREQUEST")
  (make-package "QBO_LISTEN::TRAIN_WORDREQUEST"))
(unless (find-package "QBO_LISTEN::TRAIN_WORDRESPONSE")
  (make-package "QBO_LISTEN::TRAIN_WORDRESPONSE"))

(in-package "ROS")





(defclass qbo_listen::train_wordRequest
  :super ros::object
  :slots (_word ))

(defmethod qbo_listen::train_wordRequest
  (:init
   (&key
    ((:word __word) "")
    )
   (send-super :init)
   (setq _word (string __word))
   self)
  (:word
   (&optional __word)
   (if __word (setq _word __word)) _word)
  (:serialization-length
   ()
   (+
    ;; string _word
    4 (length _word)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _word
       (write-long (length _word) s) (princ _word s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qbo_listen::train_wordResponse
  :super ros::object
  :slots (_ok ))

(defmethod qbo_listen::train_wordResponse
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

(defclass qbo_listen::train_word
  :super ros::object
  :slots ())

(setf (get qbo_listen::train_word :md5sum-) "67eda7b60c88a74182afde47ca6a3f77")
(setf (get qbo_listen::train_word :datatype-) "qbo_listen/train_word")
(setf (get qbo_listen::train_word :request) qbo_listen::train_wordRequest)
(setf (get qbo_listen::train_word :response) qbo_listen::train_wordResponse)

(defmethod qbo_listen::train_wordRequest
  (:response () (instance qbo_listen::train_wordResponse :init)))

(setf (get qbo_listen::train_wordRequest :md5sum-) "67eda7b60c88a74182afde47ca6a3f77")
(setf (get qbo_listen::train_wordRequest :datatype-) "qbo_listen/train_wordRequest")
(setf (get qbo_listen::train_wordRequest :definition-)
      "string word
---
int8 ok

")

(setf (get qbo_listen::train_wordResponse :md5sum-) "67eda7b60c88a74182afde47ca6a3f77")
(setf (get qbo_listen::train_wordResponse :datatype-) "qbo_listen/train_wordResponse")
(setf (get qbo_listen::train_wordResponse :definition-)
      "string word
---
int8 ok

")



(provide :qbo_listen/train_word "67eda7b60c88a74182afde47ca6a3f77")


