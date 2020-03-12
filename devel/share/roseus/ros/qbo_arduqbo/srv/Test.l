;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::Test)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'Test (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::TEST")
  (make-package "QBO_ARDUQBO::TEST"))
(unless (find-package "QBO_ARDUQBO::TESTREQUEST")
  (make-package "QBO_ARDUQBO::TESTREQUEST"))
(unless (find-package "QBO_ARDUQBO::TESTRESPONSE")
  (make-package "QBO_ARDUQBO::TESTRESPONSE"))

(in-package "ROS")





(defclass qbo_arduqbo::TestRequest
  :super ros::object
  :slots ())

(defmethod qbo_arduqbo::TestRequest
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

(defclass qbo_arduqbo::TestResponse
  :super ros::object
  :slots (_SRFcount _SRFAddress _SRFNotFound _Gyroscope _Accelerometer _LCD _Qboard3 _Qboard1 _Qboard2 _rightMotor _leftMotor ))

(defmethod qbo_arduqbo::TestResponse
  (:init
   (&key
    ((:SRFcount __SRFcount) 0)
    ((:SRFAddress __SRFAddress) (make-array 0 :initial-element 0 :element-type :integer))
    ((:SRFNotFound __SRFNotFound) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Gyroscope __Gyroscope) nil)
    ((:Accelerometer __Accelerometer) nil)
    ((:LCD __LCD) nil)
    ((:Qboard3 __Qboard3) nil)
    ((:Qboard1 __Qboard1) nil)
    ((:Qboard2 __Qboard2) nil)
    ((:rightMotor __rightMotor) nil)
    ((:leftMotor __leftMotor) nil)
    )
   (send-super :init)
   (setq _SRFcount (round __SRFcount))
   (setq _SRFAddress __SRFAddress)
   (setq _SRFNotFound __SRFNotFound)
   (setq _Gyroscope __Gyroscope)
   (setq _Accelerometer __Accelerometer)
   (setq _LCD __LCD)
   (setq _Qboard3 __Qboard3)
   (setq _Qboard1 __Qboard1)
   (setq _Qboard2 __Qboard2)
   (setq _rightMotor __rightMotor)
   (setq _leftMotor __leftMotor)
   self)
  (:SRFcount
   (&optional __SRFcount)
   (if __SRFcount (setq _SRFcount __SRFcount)) _SRFcount)
  (:SRFAddress
   (&optional __SRFAddress)
   (if __SRFAddress (setq _SRFAddress __SRFAddress)) _SRFAddress)
  (:SRFNotFound
   (&optional __SRFNotFound)
   (if __SRFNotFound (setq _SRFNotFound __SRFNotFound)) _SRFNotFound)
  (:Gyroscope
   (&optional __Gyroscope)
   (if __Gyroscope (setq _Gyroscope __Gyroscope)) _Gyroscope)
  (:Accelerometer
   (&optional __Accelerometer)
   (if __Accelerometer (setq _Accelerometer __Accelerometer)) _Accelerometer)
  (:LCD
   (&optional __LCD)
   (if __LCD (setq _LCD __LCD)) _LCD)
  (:Qboard3
   (&optional __Qboard3)
   (if __Qboard3 (setq _Qboard3 __Qboard3)) _Qboard3)
  (:Qboard1
   (&optional __Qboard1)
   (if __Qboard1 (setq _Qboard1 __Qboard1)) _Qboard1)
  (:Qboard2
   (&optional __Qboard2)
   (if __Qboard2 (setq _Qboard2 __Qboard2)) _Qboard2)
  (:rightMotor
   (&optional __rightMotor)
   (if __rightMotor (setq _rightMotor __rightMotor)) _rightMotor)
  (:leftMotor
   (&optional __leftMotor)
   (if __leftMotor (setq _leftMotor __leftMotor)) _leftMotor)
  (:serialization-length
   ()
   (+
    ;; int8 _SRFcount
    1
    ;; int16[] _SRFAddress
    (* 2    (length _SRFAddress)) 4
    ;; int16[] _SRFNotFound
    (* 2    (length _SRFNotFound)) 4
    ;; bool _Gyroscope
    1
    ;; bool _Accelerometer
    1
    ;; bool _LCD
    1
    ;; bool _Qboard3
    1
    ;; bool _Qboard1
    1
    ;; bool _Qboard2
    1
    ;; bool _rightMotor
    1
    ;; bool _leftMotor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _SRFcount
       (write-byte _SRFcount s)
     ;; int16[] _SRFAddress
     (write-long (length _SRFAddress) s)
     (dotimes (i (length _SRFAddress))
       (write-word (elt _SRFAddress i) s)
       )
     ;; int16[] _SRFNotFound
     (write-long (length _SRFNotFound) s)
     (dotimes (i (length _SRFNotFound))
       (write-word (elt _SRFNotFound i) s)
       )
     ;; bool _Gyroscope
       (if _Gyroscope (write-byte -1 s) (write-byte 0 s))
     ;; bool _Accelerometer
       (if _Accelerometer (write-byte -1 s) (write-byte 0 s))
     ;; bool _LCD
       (if _LCD (write-byte -1 s) (write-byte 0 s))
     ;; bool _Qboard3
       (if _Qboard3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Qboard1
       (if _Qboard1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Qboard2
       (if _Qboard2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _rightMotor
       (if _rightMotor (write-byte -1 s) (write-byte 0 s))
     ;; bool _leftMotor
       (if _leftMotor (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _SRFcount
     (setq _SRFcount (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _SRFcount 127) (setq _SRFcount (- _SRFcount 256)))
   ;; int16[] _SRFAddress
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _SRFAddress (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _SRFAddress i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _SRFNotFound
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _SRFNotFound (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _SRFNotFound i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; bool _Gyroscope
     (setq _Gyroscope (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Accelerometer
     (setq _Accelerometer (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LCD
     (setq _LCD (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Qboard3
     (setq _Qboard3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Qboard1
     (setq _Qboard1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Qboard2
     (setq _Qboard2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rightMotor
     (setq _rightMotor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _leftMotor
     (setq _leftMotor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_arduqbo::Test
  :super ros::object
  :slots ())

(setf (get qbo_arduqbo::Test :md5sum-) "6f8d7da5192e662dd9f7974027b7e5ee")
(setf (get qbo_arduqbo::Test :datatype-) "qbo_arduqbo/Test")
(setf (get qbo_arduqbo::Test :request) qbo_arduqbo::TestRequest)
(setf (get qbo_arduqbo::Test :response) qbo_arduqbo::TestResponse)

(defmethod qbo_arduqbo::TestRequest
  (:response () (instance qbo_arduqbo::TestResponse :init)))

(setf (get qbo_arduqbo::TestRequest :md5sum-) "6f8d7da5192e662dd9f7974027b7e5ee")
(setf (get qbo_arduqbo::TestRequest :datatype-) "qbo_arduqbo/TestRequest")
(setf (get qbo_arduqbo::TestRequest :definition-)
      "


















---
int8 SRFcount
int16[] SRFAddress
int16[] SRFNotFound
bool Gyroscope
bool Accelerometer
bool LCD
bool Qboard3
bool Qboard1
bool Qboard2
bool rightMotor
bool leftMotor

")

(setf (get qbo_arduqbo::TestResponse :md5sum-) "6f8d7da5192e662dd9f7974027b7e5ee")
(setf (get qbo_arduqbo::TestResponse :datatype-) "qbo_arduqbo/TestResponse")
(setf (get qbo_arduqbo::TestResponse :definition-)
      "


















---
int8 SRFcount
int16[] SRFAddress
int16[] SRFNotFound
bool Gyroscope
bool Accelerometer
bool LCD
bool Qboard3
bool Qboard1
bool Qboard2
bool rightMotor
bool leftMotor

")



(provide :qbo_arduqbo/Test "6f8d7da5192e662dd9f7974027b7e5ee")


