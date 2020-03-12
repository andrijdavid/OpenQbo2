;; Auto-generated. Do not edit!


(when (boundp 'qbo_face_msgs::FacePosAndDist)
  (if (not (find-package "QBO_FACE_MSGS"))
    (make-package "QBO_FACE_MSGS"))
  (shadow 'FacePosAndDist (find-package "QBO_FACE_MSGS")))
(unless (find-package "QBO_FACE_MSGS::FACEPOSANDDIST")
  (make-package "QBO_FACE_MSGS::FACEPOSANDDIST"))

(in-package "ROS")
;;//! \htmlinclude FacePosAndDist.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_face_msgs::FacePosAndDist
  :super ros::object
  :slots (_header _u _v _distance_to_head _image_width _image_height _face_detected _type_of_tracking ))

(defmethod qbo_face_msgs::FacePosAndDist
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:u __u) 0.0)
    ((:v __v) 0.0)
    ((:distance_to_head __distance_to_head) 0.0)
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:face_detected __face_detected) nil)
    ((:type_of_tracking __type_of_tracking) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _u (float __u))
   (setq _v (float __v))
   (setq _distance_to_head (float __distance_to_head))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _face_detected __face_detected)
   (setq _type_of_tracking (string __type_of_tracking))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:distance_to_head
   (&optional __distance_to_head)
   (if __distance_to_head (setq _distance_to_head __distance_to_head)) _distance_to_head)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:face_detected
   (&optional __face_detected)
   (if __face_detected (setq _face_detected __face_detected)) _face_detected)
  (:type_of_tracking
   (&optional __type_of_tracking)
   (if __type_of_tracking (setq _type_of_tracking __type_of_tracking)) _type_of_tracking)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _u
    4
    ;; float32 _v
    4
    ;; float32 _distance_to_head
    4
    ;; int32 _image_width
    4
    ;; int32 _image_height
    4
    ;; bool _face_detected
    1
    ;; string _type_of_tracking
    4 (length _type_of_tracking)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _u
       (sys::poke _u (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_head
       (sys::poke _distance_to_head (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _image_width
       (write-long _image_width s)
     ;; int32 _image_height
       (write-long _image_height s)
     ;; bool _face_detected
       (if _face_detected (write-byte -1 s) (write-byte 0 s))
     ;; string _type_of_tracking
       (write-long (length _type_of_tracking) s) (princ _type_of_tracking s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _u
     (setq _u (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_head
     (setq _distance_to_head (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _face_detected
     (setq _face_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _type_of_tracking
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_of_tracking (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get qbo_face_msgs::FacePosAndDist :md5sum-) "25b96c14697425c4e9c9aa5538bcad7c")
(setf (get qbo_face_msgs::FacePosAndDist :datatype-) "qbo_face_msgs/FacePosAndDist")
(setf (get qbo_face_msgs::FacePosAndDist :definition-)
      "# Software License Agreement (LGPL v2.1 License)
#
# Copyright (c) 2012 Thecorpora, S.L.
#
# This library is free software; you can redistribute it and/or modify 
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation; either version 2.1 of the License, 
# or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful, but 
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public 
# License for more details.
#  
# You should have received a copy of the GNU General Public License 
# along with this program; if not, write to the Free Software 
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, 
# MA 02110-1301, USA.

Header header
float32 u
float32 v
float32 distance_to_head
int32 image_width
int32 image_height
bool face_detected
string type_of_tracking

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :qbo_face_msgs/FacePosAndDist "25b96c14697425c4e9c9aa5538bcad7c")


