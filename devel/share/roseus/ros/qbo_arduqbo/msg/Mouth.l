;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::Mouth)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'Mouth (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::MOUTH")
  (make-package "QBO_ARDUQBO::MOUTH"))

(in-package "ROS")
;;//! \htmlinclude Mouth.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::Mouth
  :super ros::object
  :slots (_header _mouthImage ))

(defmethod qbo_arduqbo::Mouth
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mouthImage __mouthImage) (let (r) (dotimes (i 20) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mouthImage __mouthImage)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mouthImage
   (&optional __mouthImage)
   (if __mouthImage (setq _mouthImage __mouthImage)) _mouthImage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[20] _mouthImage
    (* 1    20)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[20] _mouthImage
     (dotimes (i 20)
       (if (elt _mouthImage i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[20] _mouthImage
   (dotimes (i (length _mouthImage))
     (setf (elt _mouthImage i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get qbo_arduqbo::Mouth :md5sum-) "52d894e119976923d77120ac6260422a")
(setf (get qbo_arduqbo::Mouth :datatype-) "qbo_arduqbo/Mouth")
(setf (get qbo_arduqbo::Mouth :definition-)
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
bool[20] mouthImage

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



(provide :qbo_arduqbo/Mouth "52d894e119976923d77120ac6260422a")


