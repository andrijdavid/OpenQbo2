;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::LCD)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'LCD (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::LCD")
  (make-package "QBO_ARDUQBO::LCD"))

(in-package "ROS")
;;//! \htmlinclude LCD.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::LCD
  :super ros::object
  :slots (_header _msg ))

(defmethod qbo_arduqbo::LCD
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _msg (string __msg))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get qbo_arduqbo::LCD :md5sum-) "b5ddb29fb9a84da18523c89dfbb75dba")
(setf (get qbo_arduqbo::LCD :datatype-) "qbo_arduqbo/LCD")
(setf (get qbo_arduqbo::LCD :definition-)
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
string msg

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



(provide :qbo_arduqbo/LCD "b5ddb29fb9a84da18523c89dfbb75dba")


