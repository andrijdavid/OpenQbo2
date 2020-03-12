;; Auto-generated. Do not edit!


(when (boundp 'qbo_listen::Listened)
  (if (not (find-package "QBO_LISTEN"))
    (make-package "QBO_LISTEN"))
  (shadow 'Listened (find-package "QBO_LISTEN")))
(unless (find-package "QBO_LISTEN::LISTENED")
  (make-package "QBO_LISTEN::LISTENED"))

(in-package "ROS")
;;//! \htmlinclude Listened.msg.html


(defclass qbo_listen::Listened
  :super ros::object
  :slots (_msg _not_msg _total_score _min_score _all_score ))

(defmethod qbo_listen::Listened
  (:init
   (&key
    ((:msg __msg) "")
    ((:not_msg __not_msg) "")
    ((:total_score __total_score) 0.0)
    ((:min_score __min_score) 0.0)
    ((:all_score __all_score) "")
    )
   (send-super :init)
   (setq _msg (string __msg))
   (setq _not_msg (string __not_msg))
   (setq _total_score (float __total_score))
   (setq _min_score (float __min_score))
   (setq _all_score (string __all_score))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:not_msg
   (&optional __not_msg)
   (if __not_msg (setq _not_msg __not_msg)) _not_msg)
  (:total_score
   (&optional __total_score)
   (if __total_score (setq _total_score __total_score)) _total_score)
  (:min_score
   (&optional __min_score)
   (if __min_score (setq _min_score __min_score)) _min_score)
  (:all_score
   (&optional __all_score)
   (if __all_score (setq _all_score __all_score)) _all_score)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ;; string _not_msg
    4 (length _not_msg)
    ;; float64 _total_score
    8
    ;; float64 _min_score
    8
    ;; string _all_score
    4 (length _all_score)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; string _not_msg
       (write-long (length _not_msg) s) (princ _not_msg s)
     ;; float64 _total_score
       (sys::poke _total_score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_score
       (sys::poke _min_score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _all_score
       (write-long (length _all_score) s) (princ _all_score s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _not_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _not_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _total_score
     (setq _total_score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_score
     (setq _min_score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _all_score
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _all_score (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get qbo_listen::Listened :md5sum-) "4e6cf606f955a4c6315fb083f058ab13")
(setf (get qbo_listen::Listened :datatype-) "qbo_listen/Listened")
(setf (get qbo_listen::Listened :definition-)
      "#Copyright (c) 2012-2013 TheCorpora SL
#
#This library is free software; you can redistribute it and/or modify 
#it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; 
#either version 3 of the License, or (at your option) any later version. 
#
#This library is distributed in the hope that it will be useful, 
#but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or 
#FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.
#
#You should have received a copy of the GNU Lesser General Public License along with this library; 
#if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

string msg
string not_msg
float64 total_score
float64 min_score
string all_score

")



(provide :qbo_listen/Listened "4e6cf606f955a4c6315fb083f058ab13")


