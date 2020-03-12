;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::TorqueEnable)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'TorqueEnable (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::TORQUEENABLE")
  (make-package "QBO_ARDUQBO::TORQUEENABLE"))
(unless (find-package "QBO_ARDUQBO::TORQUEENABLEREQUEST")
  (make-package "QBO_ARDUQBO::TORQUEENABLEREQUEST"))
(unless (find-package "QBO_ARDUQBO::TORQUEENABLERESPONSE")
  (make-package "QBO_ARDUQBO::TORQUEENABLERESPONSE"))

(in-package "ROS")





(defclass qbo_arduqbo::TorqueEnableRequest
  :super ros::object
  :slots (_torque_enable ))

(defmethod qbo_arduqbo::TorqueEnableRequest
  (:init
   (&key
    ((:torque_enable __torque_enable) nil)
    )
   (send-super :init)
   (setq _torque_enable __torque_enable)
   self)
  (:torque_enable
   (&optional __torque_enable)
   (if __torque_enable (setq _torque_enable __torque_enable)) _torque_enable)
  (:serialization-length
   ()
   (+
    ;; bool _torque_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _torque_enable
       (if _torque_enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _torque_enable
     (setq _torque_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_arduqbo::TorqueEnableResponse
  :super ros::object
  :slots ())

(defmethod qbo_arduqbo::TorqueEnableResponse
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

(defclass qbo_arduqbo::TorqueEnable
  :super ros::object
  :slots ())

(setf (get qbo_arduqbo::TorqueEnable :md5sum-) "e44dc96db32bd58b5a896c2c5bf316d0")
(setf (get qbo_arduqbo::TorqueEnable :datatype-) "qbo_arduqbo/TorqueEnable")
(setf (get qbo_arduqbo::TorqueEnable :request) qbo_arduqbo::TorqueEnableRequest)
(setf (get qbo_arduqbo::TorqueEnable :response) qbo_arduqbo::TorqueEnableResponse)

(defmethod qbo_arduqbo::TorqueEnableRequest
  (:response () (instance qbo_arduqbo::TorqueEnableResponse :init)))

(setf (get qbo_arduqbo::TorqueEnableRequest :md5sum-) "e44dc96db32bd58b5a896c2c5bf316d0")
(setf (get qbo_arduqbo::TorqueEnableRequest :datatype-) "qbo_arduqbo/TorqueEnableRequest")
(setf (get qbo_arduqbo::TorqueEnableRequest :definition-)
      "bool torque_enable
---

")

(setf (get qbo_arduqbo::TorqueEnableResponse :md5sum-) "e44dc96db32bd58b5a896c2c5bf316d0")
(setf (get qbo_arduqbo::TorqueEnableResponse :datatype-) "qbo_arduqbo/TorqueEnableResponse")
(setf (get qbo_arduqbo::TorqueEnableResponse :definition-)
      "bool torque_enable
---

")



(provide :qbo_arduqbo/TorqueEnable "e44dc96db32bd58b5a896c2c5bf316d0")


