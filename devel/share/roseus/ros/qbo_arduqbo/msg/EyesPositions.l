;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::EyesPositions)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'EyesPositions (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::EYESPOSITIONS")
  (make-package "QBO_ARDUQBO::EYESPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude EyesPositions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::EyesPositions
  :super ros::object
  :slots (_header _rightEye _leftEye ))

(defmethod qbo_arduqbo::EyesPositions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rightEye __rightEye) 0)
    ((:leftEye __leftEye) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rightEye (round __rightEye))
   (setq _leftEye (round __leftEye))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rightEye
   (&optional __rightEye)
   (if __rightEye (setq _rightEye __rightEye)) _rightEye)
  (:leftEye
   (&optional __leftEye)
   (if __leftEye (setq _leftEye __leftEye)) _leftEye)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _rightEye
    2
    ;; uint16 _leftEye
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _rightEye
       (write-word _rightEye s)
     ;; uint16 _leftEye
       (write-word _leftEye s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _rightEye
     (setq _rightEye (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _leftEye
     (setq _leftEye (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get qbo_arduqbo::EyesPositions :md5sum-) "509ef4a37cf01ef016e536e2a179623e")
(setf (get qbo_arduqbo::EyesPositions :datatype-) "qbo_arduqbo/EyesPositions")
(setf (get qbo_arduqbo::EyesPositions :definition-)
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
uint16 rightEye
uint16 leftEye

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



(provide :qbo_arduqbo/EyesPositions "509ef4a37cf01ef016e536e2a179623e")


