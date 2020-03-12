; Auto-generated. Do not edit!


(cl:in-package qbo_listen-srv)


;//! \htmlinclude train_word-request.msg.html

(cl:defclass <train_word-request> (roslisp-msg-protocol:ros-message)
  ((word
    :reader word
    :initarg :word
    :type cl:string
    :initform ""))
)

(cl:defclass train_word-request (<train_word-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <train_word-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'train_word-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<train_word-request> is deprecated: use qbo_listen-srv:train_word-request instead.")))

(cl:ensure-generic-function 'word-val :lambda-list '(m))
(cl:defmethod word-val ((m <train_word-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:word-val is deprecated.  Use qbo_listen-srv:word instead.")
  (word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <train_word-request>) ostream)
  "Serializes a message object of type '<train_word-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'word))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <train_word-request>) istream)
  "Deserializes a message object of type '<train_word-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<train_word-request>)))
  "Returns string type for a service object of type '<train_word-request>"
  "qbo_listen/train_wordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'train_word-request)))
  "Returns string type for a service object of type 'train_word-request"
  "qbo_listen/train_wordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<train_word-request>)))
  "Returns md5sum for a message object of type '<train_word-request>"
  "67eda7b60c88a74182afde47ca6a3f77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'train_word-request)))
  "Returns md5sum for a message object of type 'train_word-request"
  "67eda7b60c88a74182afde47ca6a3f77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<train_word-request>)))
  "Returns full string definition for message of type '<train_word-request>"
  (cl:format cl:nil "string word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'train_word-request)))
  "Returns full string definition for message of type 'train_word-request"
  (cl:format cl:nil "string word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <train_word-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'word))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <train_word-request>))
  "Converts a ROS message object to a list"
  (cl:list 'train_word-request
    (cl:cons ':word (word msg))
))
;//! \htmlinclude train_word-response.msg.html

(cl:defclass <train_word-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass train_word-response (<train_word-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <train_word-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'train_word-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<train_word-response> is deprecated: use qbo_listen-srv:train_word-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <train_word-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:ok-val is deprecated.  Use qbo_listen-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <train_word-response>) ostream)
  "Serializes a message object of type '<train_word-response>"
  (cl:let* ((signed (cl:slot-value msg 'ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <train_word-response>) istream)
  "Deserializes a message object of type '<train_word-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ok) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<train_word-response>)))
  "Returns string type for a service object of type '<train_word-response>"
  "qbo_listen/train_wordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'train_word-response)))
  "Returns string type for a service object of type 'train_word-response"
  "qbo_listen/train_wordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<train_word-response>)))
  "Returns md5sum for a message object of type '<train_word-response>"
  "67eda7b60c88a74182afde47ca6a3f77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'train_word-response)))
  "Returns md5sum for a message object of type 'train_word-response"
  "67eda7b60c88a74182afde47ca6a3f77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<train_word-response>)))
  "Returns full string definition for message of type '<train_word-response>"
  (cl:format cl:nil "int8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'train_word-response)))
  "Returns full string definition for message of type 'train_word-response"
  (cl:format cl:nil "int8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <train_word-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <train_word-response>))
  "Converts a ROS message object to a list"
  (cl:list 'train_word-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'train_word)))
  'train_word-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'train_word)))
  'train_word-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'train_word)))
  "Returns string type for a service object of type '<train_word>"
  "qbo_listen/train_word")