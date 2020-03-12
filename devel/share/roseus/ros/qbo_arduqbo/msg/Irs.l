;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::Irs)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'Irs (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::IRS")
  (make-package "QBO_ARDUQBO::IRS"))

(in-package "ROS")
;;//! \htmlinclude Irs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::Irs
  :super ros::object
  :slots (_header _ir0 _ir1 _ir2 ))

(defmethod qbo_arduqbo::Irs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ir0 __ir0) 0)
    ((:ir1 __ir1) 0)
    ((:ir2 __ir2) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ir0 (round __ir0))
   (setq _ir1 (round __ir1))
   (setq _ir2 (round __ir2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ir0
   (&optional __ir0)
   (if __ir0 (setq _ir0 __ir0)) _ir0)
  (:ir1
   (&optional __ir1)
   (if __ir1 (setq _ir1 __ir1)) _ir1)
  (:ir2
   (&optional __ir2)
   (if __ir2 (setq _ir2 __ir2)) _ir2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _ir0
    1
    ;; uint8 _ir1
    1
    ;; uint8 _ir2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _ir0
       (write-byte _ir0 s)
     ;; uint8 _ir1
       (write-byte _ir1 s)
     ;; uint8 _ir2
       (write-byte _ir2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _ir0
     (setq _ir0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ir1
     (setq _ir1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ir2
     (setq _ir2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get qbo_arduqbo::Irs :md5sum-) "98d76e6b27680041844888fa67ba28e7")
(setf (get qbo_arduqbo::Irs :datatype-) "qbo_arduqbo/Irs")
(setf (get qbo_arduqbo::Irs :definition-)
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
uint8 ir0
uint8 ir1
uint8 ir2

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



(provide :qbo_arduqbo/Irs "98d76e6b27680041844888fa67ba28e7")


