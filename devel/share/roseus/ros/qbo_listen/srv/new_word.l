;; Auto-generated. Do not edit!


(when (boundp 'qbo_listen::new_word)
  (if (not (find-package "QBO_LISTEN"))
    (make-package "QBO_LISTEN"))
  (shadow 'new_word (find-package "QBO_LISTEN")))
(unless (find-package "QBO_LISTEN::NEW_WORD")
  (make-package "QBO_LISTEN::NEW_WORD"))
(unless (find-package "QBO_LISTEN::NEW_WORDREQUEST")
  (make-package "QBO_LISTEN::NEW_WORDREQUEST"))
(unless (find-package "QBO_LISTEN::NEW_WORDRESPONSE")
  (make-package "QBO_LISTEN::NEW_WORDRESPONSE"))

(in-package "ROS")





(defclass qbo_listen::new_wordRequest
  :super ros::object
  :slots (_word _grammar _label ))

(defmethod qbo_listen::new_wordRequest
  (:init
   (&key
    ((:word __word) "")
    ((:grammar __grammar) "")
    ((:label __label) "")
    )
   (send-super :init)
   (setq _word (string __word))
   (setq _grammar (string __grammar))
   (setq _label (string __label))
   self)
  (:word
   (&optional __word)
   (if __word (setq _word __word)) _word)
  (:grammar
   (&optional __grammar)
   (if __grammar (setq _grammar __grammar)) _grammar)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _word
    4 (length _word)
    ;; string _grammar
    4 (length _grammar)
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _word
       (write-long (length _word) s) (princ _word s)
     ;; string _grammar
       (write-long (length _grammar) s) (princ _grammar s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _grammar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grammar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qbo_listen::new_wordResponse
  :super ros::object
  :slots (_ok ))

(defmethod qbo_listen::new_wordResponse
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

(defclass qbo_listen::new_word
  :super ros::object
  :slots ())

(setf (get qbo_listen::new_word :md5sum-) "5c002061418e8070e6be74c25693fdf1")
(setf (get qbo_listen::new_word :datatype-) "qbo_listen/new_word")
(setf (get qbo_listen::new_word :request) qbo_listen::new_wordRequest)
(setf (get qbo_listen::new_word :response) qbo_listen::new_wordResponse)

(defmethod qbo_listen::new_wordRequest
  (:response () (instance qbo_listen::new_wordResponse :init)))

(setf (get qbo_listen::new_wordRequest :md5sum-) "5c002061418e8070e6be74c25693fdf1")
(setf (get qbo_listen::new_wordRequest :datatype-) "qbo_listen/new_wordRequest")
(setf (get qbo_listen::new_wordRequest :definition-)
      "string word
string grammar
string label
---
int8 ok

")

(setf (get qbo_listen::new_wordResponse :md5sum-) "5c002061418e8070e6be74c25693fdf1")
(setf (get qbo_listen::new_wordResponse :datatype-) "qbo_listen/new_wordResponse")
(setf (get qbo_listen::new_wordResponse :definition-)
      "string word
string grammar
string label
---
int8 ok

")



(provide :qbo_listen/new_word "5c002061418e8070e6be74c25693fdf1")


