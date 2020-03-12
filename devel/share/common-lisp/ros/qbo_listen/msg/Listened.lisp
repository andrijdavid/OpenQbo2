; Auto-generated. Do not edit!


(cl:in-package qbo_listen-msg)


;//! \htmlinclude Listened.msg.html

(cl:defclass <Listened> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (not_msg
    :reader not_msg
    :initarg :not_msg
    :type cl:string
    :initform "")
   (total_score
    :reader total_score
    :initarg :total_score
    :type cl:float
    :initform 0.0)
   (min_score
    :reader min_score
    :initarg :min_score
    :type cl:float
    :initform 0.0)
   (all_score
    :reader all_score
    :initarg :all_score
    :type cl:string
    :initform ""))
)

(cl:defclass Listened (<Listened>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Listened>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Listened)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-msg:<Listened> is deprecated: use qbo_listen-msg:Listened instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Listened>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-msg:msg-val is deprecated.  Use qbo_listen-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'not_msg-val :lambda-list '(m))
(cl:defmethod not_msg-val ((m <Listened>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-msg:not_msg-val is deprecated.  Use qbo_listen-msg:not_msg instead.")
  (not_msg m))

(cl:ensure-generic-function 'total_score-val :lambda-list '(m))
(cl:defmethod total_score-val ((m <Listened>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-msg:total_score-val is deprecated.  Use qbo_listen-msg:total_score instead.")
  (total_score m))

(cl:ensure-generic-function 'min_score-val :lambda-list '(m))
(cl:defmethod min_score-val ((m <Listened>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-msg:min_score-val is deprecated.  Use qbo_listen-msg:min_score instead.")
  (min_score m))

(cl:ensure-generic-function 'all_score-val :lambda-list '(m))
(cl:defmethod all_score-val ((m <Listened>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-msg:all_score-val is deprecated.  Use qbo_listen-msg:all_score instead.")
  (all_score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Listened>) ostream)
  "Serializes a message object of type '<Listened>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'not_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'not_msg))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'all_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'all_score))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Listened>) istream)
  "Deserializes a message object of type '<Listened>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'not_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'not_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'all_score) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'all_score) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Listened>)))
  "Returns string type for a message object of type '<Listened>"
  "qbo_listen/Listened")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Listened)))
  "Returns string type for a message object of type 'Listened"
  "qbo_listen/Listened")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Listened>)))
  "Returns md5sum for a message object of type '<Listened>"
  "4e6cf606f955a4c6315fb083f058ab13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Listened)))
  "Returns md5sum for a message object of type 'Listened"
  "4e6cf606f955a4c6315fb083f058ab13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Listened>)))
  "Returns full string definition for message of type '<Listened>"
  (cl:format cl:nil "#Copyright (c) 2012-2013 TheCorpora SL~%#~%#This library is free software; you can redistribute it and/or modify ~%#it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; ~%#either version 3 of the License, or (at your option) any later version. ~%#~%#This library is distributed in the hope that it will be useful, ~%#but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or ~%#FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.~%#~%#You should have received a copy of the GNU Lesser General Public License along with this library; ~%#if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA~%~%string msg~%string not_msg~%float64 total_score~%float64 min_score~%string all_score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Listened)))
  "Returns full string definition for message of type 'Listened"
  (cl:format cl:nil "#Copyright (c) 2012-2013 TheCorpora SL~%#~%#This library is free software; you can redistribute it and/or modify ~%#it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; ~%#either version 3 of the License, or (at your option) any later version. ~%#~%#This library is distributed in the hope that it will be useful, ~%#but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or ~%#FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.~%#~%#You should have received a copy of the GNU Lesser General Public License along with this library; ~%#if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA~%~%string msg~%string not_msg~%float64 total_score~%float64 min_score~%string all_score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Listened>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
     4 (cl:length (cl:slot-value msg 'not_msg))
     8
     8
     4 (cl:length (cl:slot-value msg 'all_score))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Listened>))
  "Converts a ROS message object to a list"
  (cl:list 'Listened
    (cl:cons ':msg (msg msg))
    (cl:cons ':not_msg (not_msg msg))
    (cl:cons ':total_score (total_score msg))
    (cl:cons ':min_score (min_score msg))
    (cl:cons ':all_score (all_score msg))
))
