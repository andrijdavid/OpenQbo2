;; Auto-generated. Do not edit!


(when (boundp 'qbo_listen::spell_word)
  (if (not (find-package "QBO_LISTEN"))
    (make-package "QBO_LISTEN"))
  (shadow 'spell_word (find-package "QBO_LISTEN")))
(unless (find-package "QBO_LISTEN::SPELL_WORD")
  (make-package "QBO_LISTEN::SPELL_WORD"))
(unless (find-package "QBO_LISTEN::SPELL_WORDREQUEST")
  (make-package "QBO_LISTEN::SPELL_WORDREQUEST"))
(unless (find-package "QBO_LISTEN::SPELL_WORDRESPONSE")
  (make-package "QBO_LISTEN::SPELL_WORDRESPONSE"))

(in-package "ROS")





(defclass qbo_listen::spell_wordRequest
  :super ros::object
  :slots ())

(defmethod qbo_listen::spell_wordRequest
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

(defclass qbo_listen::spell_wordResponse
  :super ros::object
  :slots (_word ))

(defmethod qbo_listen::spell_wordResponse
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

(defclass qbo_listen::spell_word
  :super ros::object
  :slots ())

(setf (get qbo_listen::spell_word :md5sum-) "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(setf (get qbo_listen::spell_word :datatype-) "qbo_listen/spell_word")
(setf (get qbo_listen::spell_word :request) qbo_listen::spell_wordRequest)
(setf (get qbo_listen::spell_word :response) qbo_listen::spell_wordResponse)

(defmethod qbo_listen::spell_wordRequest
  (:response () (instance qbo_listen::spell_wordResponse :init)))

(setf (get qbo_listen::spell_wordRequest :md5sum-) "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(setf (get qbo_listen::spell_wordRequest :datatype-) "qbo_listen/spell_wordRequest")
(setf (get qbo_listen::spell_wordRequest :definition-)
      "---
string word

")

(setf (get qbo_listen::spell_wordResponse :md5sum-) "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(setf (get qbo_listen::spell_wordResponse :datatype-) "qbo_listen/spell_wordResponse")
(setf (get qbo_listen::spell_wordResponse :definition-)
      "---
string word

")



(provide :qbo_listen/spell_word "cf5cbdd7f0c6b9eaa898f882ab6eade6")


