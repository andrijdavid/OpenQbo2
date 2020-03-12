;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::BatteryLevel)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'BatteryLevel (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::BATTERYLEVEL")
  (make-package "QBO_ARDUQBO::BATTERYLEVEL"))

(in-package "ROS")
;;//! \htmlinclude BatteryLevel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::BatteryLevel
  :super ros::object
  :slots (_header _level _stat ))

(defmethod qbo_arduqbo::BatteryLevel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:level __level) 0.0)
    ((:stat __stat) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _level (float __level))
   (setq _stat (round __stat))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:stat
   (&optional __stat)
   (if __stat (setq _stat __stat)) _stat)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _level
    4
    ;; uint8 _stat
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _level
       (sys::poke _level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _stat
       (write-byte _stat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _level
     (setq _level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _stat
     (setq _stat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get qbo_arduqbo::BatteryLevel :md5sum-) "4f662380ef802191974fae59ab2731d1")
(setf (get qbo_arduqbo::BatteryLevel :datatype-) "qbo_arduqbo/BatteryLevel")
(setf (get qbo_arduqbo::BatteryLevel :definition-)
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
# MA 02110-1301, USA.

Header header
float32 level
uint8 stat

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



(provide :qbo_arduqbo/BatteryLevel "4f662380ef802191974fae59ab2731d1")


