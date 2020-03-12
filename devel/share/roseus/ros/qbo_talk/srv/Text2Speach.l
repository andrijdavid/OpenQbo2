;; Auto-generated. Do not edit!


(when (boundp 'qbo_talk::Text2Speach)
  (if (not (find-package "QBO_TALK"))
    (make-package "QBO_TALK"))
  (shadow 'Text2Speach (find-package "QBO_TALK")))
(unless (find-package "QBO_TALK::TEXT2SPEACH")
  (make-package "QBO_TALK::TEXT2SPEACH"))
(unless (find-package "QBO_TALK::TEXT2SPEACHREQUEST")
  (make-package "QBO_TALK::TEXT2SPEACHREQUEST"))
(unless (find-package "QBO_TALK::TEXT2SPEACHRESPONSE")
  (make-package "QBO_TALK::TEXT2SPEACHRESPONSE"))

(in-package "ROS")





(defclass qbo_talk::Text2SpeachRequest
  :super ros::object
  :slots (_command ))

(defmethod qbo_talk::Text2SpeachRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qbo_talk::Text2SpeachResponse
  :super ros::object
  :slots (_result ))

(defmethod qbo_talk::Text2SpeachResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_talk::Text2Speach
  :super ros::object
  :slots ())

(setf (get qbo_talk::Text2Speach :md5sum-) "2fb3aa2736d70ecbfc297d3d9b879661")
(setf (get qbo_talk::Text2Speach :datatype-) "qbo_talk/Text2Speach")
(setf (get qbo_talk::Text2Speach :request) qbo_talk::Text2SpeachRequest)
(setf (get qbo_talk::Text2Speach :response) qbo_talk::Text2SpeachResponse)

(defmethod qbo_talk::Text2SpeachRequest
  (:response () (instance qbo_talk::Text2SpeachResponse :init)))

(setf (get qbo_talk::Text2SpeachRequest :md5sum-) "2fb3aa2736d70ecbfc297d3d9b879661")
(setf (get qbo_talk::Text2SpeachRequest :datatype-) "qbo_talk/Text2SpeachRequest")
(setf (get qbo_talk::Text2SpeachRequest :definition-)
      "






















string command
---
bool result

")

(setf (get qbo_talk::Text2SpeachResponse :md5sum-) "2fb3aa2736d70ecbfc297d3d9b879661")
(setf (get qbo_talk::Text2SpeachResponse :datatype-) "qbo_talk/Text2SpeachResponse")
(setf (get qbo_talk::Text2SpeachResponse :definition-)
      "






















string command
---
bool result

")



(provide :qbo_talk/Text2Speach "2fb3aa2736d70ecbfc297d3d9b879661")


