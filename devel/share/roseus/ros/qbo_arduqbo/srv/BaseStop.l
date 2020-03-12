;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::BaseStop)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'BaseStop (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::BASESTOP")
  (make-package "QBO_ARDUQBO::BASESTOP"))
(unless (find-package "QBO_ARDUQBO::BASESTOPREQUEST")
  (make-package "QBO_ARDUQBO::BASESTOPREQUEST"))
(unless (find-package "QBO_ARDUQBO::BASESTOPRESPONSE")
  (make-package "QBO_ARDUQBO::BASESTOPRESPONSE"))

(in-package "ROS")





(defclass qbo_arduqbo::BaseStopRequest
  :super ros::object
  :slots (_sender _state ))

(defmethod qbo_arduqbo::BaseStopRequest
  (:init
   (&key
    ((:sender __sender) "")
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _sender (string __sender))
   (setq _state __state)
   self)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _sender
    4 (length _sender)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_arduqbo::BaseStopResponse
  :super ros::object
  :slots ())

(defmethod qbo_arduqbo::BaseStopResponse
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

(defclass qbo_arduqbo::BaseStop
  :super ros::object
  :slots ())

(setf (get qbo_arduqbo::BaseStop :md5sum-) "adc1836ec05769e51272f3bf2b237d1d")
(setf (get qbo_arduqbo::BaseStop :datatype-) "qbo_arduqbo/BaseStop")
(setf (get qbo_arduqbo::BaseStop :request) qbo_arduqbo::BaseStopRequest)
(setf (get qbo_arduqbo::BaseStop :response) qbo_arduqbo::BaseStopResponse)

(defmethod qbo_arduqbo::BaseStopRequest
  (:response () (instance qbo_arduqbo::BaseStopResponse :init)))

(setf (get qbo_arduqbo::BaseStopRequest :md5sum-) "adc1836ec05769e51272f3bf2b237d1d")
(setf (get qbo_arduqbo::BaseStopRequest :datatype-) "qbo_arduqbo/BaseStopRequest")
(setf (get qbo_arduqbo::BaseStopRequest :definition-)
      "string sender
bool state
---

")

(setf (get qbo_arduqbo::BaseStopResponse :md5sum-) "adc1836ec05769e51272f3bf2b237d1d")
(setf (get qbo_arduqbo::BaseStopResponse :datatype-) "qbo_arduqbo/BaseStopResponse")
(setf (get qbo_arduqbo::BaseStopResponse :definition-)
      "string sender
bool state
---

")



(provide :qbo_arduqbo/BaseStop "adc1836ec05769e51272f3bf2b237d1d")


