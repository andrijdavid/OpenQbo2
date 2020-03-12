;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::NoiseLevels)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'NoiseLevels (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::NOISELEVELS")
  (make-package "QBO_ARDUQBO::NOISELEVELS"))

(in-package "ROS")
;;//! \htmlinclude NoiseLevels.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::NoiseLevels
  :super ros::object
  :slots (_header _m0 _m1 _m2 ))

(defmethod qbo_arduqbo::NoiseLevels
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:m0 __m0) 0)
    ((:m1 __m1) 0)
    ((:m2 __m2) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _m0 (round __m0))
   (setq _m1 (round __m1))
   (setq _m2 (round __m2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:m0
   (&optional __m0)
   (if __m0 (setq _m0 __m0)) _m0)
  (:m1
   (&optional __m1)
   (if __m1 (setq _m1 __m1)) _m1)
  (:m2
   (&optional __m2)
   (if __m2 (setq _m2 __m2)) _m2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _m0
    2
    ;; uint16 _m1
    2
    ;; uint16 _m2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _m0
       (write-word _m0 s)
     ;; uint16 _m1
       (write-word _m1 s)
     ;; uint16 _m2
       (write-word _m2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _m0
     (setq _m0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _m1
     (setq _m1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _m2
     (setq _m2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get qbo_arduqbo::NoiseLevels :md5sum-) "e44910923ee5ef3281d32758158e1379")
(setf (get qbo_arduqbo::NoiseLevels :datatype-) "qbo_arduqbo/NoiseLevels")
(setf (get qbo_arduqbo::NoiseLevels :definition-)
      "# Software License Agreement (LGPL v2.1 License)
#
# Copyright (c) 2012 Thecorpora, Inc.
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
# MA 02110-1301, USA.# Software License Agreement (LGPL v2.1 License)
#
# Copyright (c) 2012 Thecorpora, Inc.
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
uint16 m0
uint16 m1
uint16 m2

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



(provide :qbo_arduqbo/NoiseLevels "e44910923ee5ef3281d32758158e1379")


