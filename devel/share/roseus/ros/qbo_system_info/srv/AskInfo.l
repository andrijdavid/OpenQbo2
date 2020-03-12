;; Auto-generated. Do not edit!


(when (boundp 'qbo_system_info::AskInfo)
  (if (not (find-package "QBO_SYSTEM_INFO"))
    (make-package "QBO_SYSTEM_INFO"))
  (shadow 'AskInfo (find-package "QBO_SYSTEM_INFO")))
(unless (find-package "QBO_SYSTEM_INFO::ASKINFO")
  (make-package "QBO_SYSTEM_INFO::ASKINFO"))
(unless (find-package "QBO_SYSTEM_INFO::ASKINFOREQUEST")
  (make-package "QBO_SYSTEM_INFO::ASKINFOREQUEST"))
(unless (find-package "QBO_SYSTEM_INFO::ASKINFORESPONSE")
  (make-package "QBO_SYSTEM_INFO::ASKINFORESPONSE"))

(in-package "ROS")





(defclass qbo_system_info::AskInfoRequest
  :super ros::object
  :slots (_command ))

(defmethod qbo_system_info::AskInfoRequest
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

(defclass qbo_system_info::AskInfoResponse
  :super ros::object
  :slots (_info ))

(defmethod qbo_system_info::AskInfoResponse
  (:init
   (&key
    ((:info __info) "")
    )
   (send-super :init)
   (setq _info (string __info))
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qbo_system_info::AskInfo
  :super ros::object
  :slots ())

(setf (get qbo_system_info::AskInfo :md5sum-) "2114094fd794b6de43079d7511fd7383")
(setf (get qbo_system_info::AskInfo :datatype-) "qbo_system_info/AskInfo")
(setf (get qbo_system_info::AskInfo :request) qbo_system_info::AskInfoRequest)
(setf (get qbo_system_info::AskInfo :response) qbo_system_info::AskInfoResponse)

(defmethod qbo_system_info::AskInfoRequest
  (:response () (instance qbo_system_info::AskInfoResponse :init)))

(setf (get qbo_system_info::AskInfoRequest :md5sum-) "2114094fd794b6de43079d7511fd7383")
(setf (get qbo_system_info::AskInfoRequest :datatype-) "qbo_system_info/AskInfoRequest")
(setf (get qbo_system_info::AskInfoRequest :definition-)
      "






string command
---
string info

")

(setf (get qbo_system_info::AskInfoResponse :md5sum-) "2114094fd794b6de43079d7511fd7383")
(setf (get qbo_system_info::AskInfoResponse :datatype-) "qbo_system_info/AskInfoResponse")
(setf (get qbo_system_info::AskInfoResponse :definition-)
      "






string command
---
string info

")



(provide :qbo_system_info/AskInfo "2114094fd794b6de43079d7511fd7383")


