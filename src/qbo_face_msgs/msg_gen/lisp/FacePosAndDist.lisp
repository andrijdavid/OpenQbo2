; Auto-generated. Do not edit!


(cl:in-package qbo_face_msgs-msg)


;//! \htmlinclude FacePosAndDist.msg.html

(cl:defclass <FacePosAndDist> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (distance_to_head
    :reader distance_to_head
    :initarg :distance_to_head
    :type cl:float
    :initform 0.0)
   (image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0)
   (face_detected
    :reader face_detected
    :initarg :face_detected
    :type cl:boolean
    :initform cl:nil)
   (type_of_tracking
    :reader type_of_tracking
    :initarg :type_of_tracking
    :type cl:string
    :initform ""))
)

(cl:defclass FacePosAndDist (<FacePosAndDist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FacePosAndDist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FacePosAndDist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-msg:<FacePosAndDist> is deprecated: use qbo_face_msgs-msg:FacePosAndDist instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:header-val is deprecated.  Use qbo_face_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:u-val is deprecated.  Use qbo_face_msgs-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:v-val is deprecated.  Use qbo_face_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'distance_to_head-val :lambda-list '(m))
(cl:defmethod distance_to_head-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:distance_to_head-val is deprecated.  Use qbo_face_msgs-msg:distance_to_head instead.")
  (distance_to_head m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:image_width-val is deprecated.  Use qbo_face_msgs-msg:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:image_height-val is deprecated.  Use qbo_face_msgs-msg:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'face_detected-val :lambda-list '(m))
(cl:defmethod face_detected-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:face_detected-val is deprecated.  Use qbo_face_msgs-msg:face_detected instead.")
  (face_detected m))

(cl:ensure-generic-function 'type_of_tracking-val :lambda-list '(m))
(cl:defmethod type_of_tracking-val ((m <FacePosAndDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-msg:type_of_tracking-val is deprecated.  Use qbo_face_msgs-msg:type_of_tracking instead.")
  (type_of_tracking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FacePosAndDist>) ostream)
  "Serializes a message object of type '<FacePosAndDist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_head))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'image_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'face_detected) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type_of_tracking))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type_of_tracking))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FacePosAndDist>) istream)
  "Deserializes a message object of type '<FacePosAndDist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_head) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'face_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_of_tracking) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type_of_tracking) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FacePosAndDist>)))
  "Returns string type for a message object of type '<FacePosAndDist>"
  "qbo_face_msgs/FacePosAndDist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FacePosAndDist)))
  "Returns string type for a message object of type 'FacePosAndDist"
  "qbo_face_msgs/FacePosAndDist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FacePosAndDist>)))
  "Returns md5sum for a message object of type '<FacePosAndDist>"
  "25b96c14697425c4e9c9aa5538bcad7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FacePosAndDist)))
  "Returns md5sum for a message object of type 'FacePosAndDist"
  "25b96c14697425c4e9c9aa5538bcad7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FacePosAndDist>)))
  "Returns full string definition for message of type '<FacePosAndDist>"
  (cl:format cl:nil "# Software License Agreement (LGPL v2.1 License)~%#~%# Copyright (c) 2012 Thecorpora, S.L.~%#~%# This library is free software; you can redistribute it and/or modify ~%# it under the terms of the GNU Lesser General Public License as published~%# by the Free Software Foundation; either version 2.1 of the License, ~%# or (at your option) any later version.~%#~%# This library is distributed in the hope that it will be useful, but ~%# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY ~%# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public ~%# License for more details.~%#  ~%# You should have received a copy of the GNU General Public License ~%# along with this program; if not, write to the Free Software ~%# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, ~%# MA 02110-1301, USA.~%~%Header header~%float32 u~%float32 v~%float32 distance_to_head~%int32 image_width~%int32 image_height~%bool face_detected~%string type_of_tracking~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FacePosAndDist)))
  "Returns full string definition for message of type 'FacePosAndDist"
  (cl:format cl:nil "# Software License Agreement (LGPL v2.1 License)~%#~%# Copyright (c) 2012 Thecorpora, S.L.~%#~%# This library is free software; you can redistribute it and/or modify ~%# it under the terms of the GNU Lesser General Public License as published~%# by the Free Software Foundation; either version 2.1 of the License, ~%# or (at your option) any later version.~%#~%# This library is distributed in the hope that it will be useful, but ~%# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY ~%# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public ~%# License for more details.~%#  ~%# You should have received a copy of the GNU General Public License ~%# along with this program; if not, write to the Free Software ~%# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, ~%# MA 02110-1301, USA.~%~%Header header~%float32 u~%float32 v~%float32 distance_to_head~%int32 image_width~%int32 image_height~%bool face_detected~%string type_of_tracking~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FacePosAndDist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'type_of_tracking))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FacePosAndDist>))
  "Converts a ROS message object to a list"
  (cl:list 'FacePosAndDist
    (cl:cons ':header (header msg))
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
    (cl:cons ':distance_to_head (distance_to_head msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':face_detected (face_detected msg))
    (cl:cons ':type_of_tracking (type_of_tracking msg))
))
