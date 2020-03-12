; Auto-generated. Do not edit!


(cl:in-package qbo_listen-srv)


;//! \htmlinclude new_word-request.msg.html

(cl:defclass <new_word-request> (roslisp-msg-protocol:ros-message)
  ((word
    :reader word
    :initarg :word
    :type cl:string
    :initform "")
   (grammar
    :reader grammar
    :initarg :grammar
    :type cl:string
    :initform "")
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass new_word-request (<new_word-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <new_word-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'new_word-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<new_word-request> is deprecated: use qbo_listen-srv:new_word-request instead.")))

(cl:ensure-generic-function 'word-val :lambda-list '(m))
(cl:defmethod word-val ((m <new_word-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:word-val is deprecated.  Use qbo_listen-srv:word instead.")
  (word m))

(cl:ensure-generic-function 'grammar-val :lambda-list '(m))
(cl:defmethod grammar-val ((m <new_word-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:grammar-val is deprecated.  Use qbo_listen-srv:grammar instead.")
  (grammar m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <new_word-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:label-val is deprecated.  Use qbo_listen-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <new_word-request>) ostream)
  "Serializes a message object of type '<new_word-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'word))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'grammar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'grammar))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <new_word-request>) istream)
  "Deserializes a message object of type '<new_word-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grammar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'grammar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<new_word-request>)))
  "Returns string type for a service object of type '<new_word-request>"
  "qbo_listen/new_wordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'new_word-request)))
  "Returns string type for a service object of type 'new_word-request"
  "qbo_listen/new_wordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<new_word-request>)))
  "Returns md5sum for a message object of type '<new_word-request>"
  "5c002061418e8070e6be74c25693fdf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'new_word-request)))
  "Returns md5sum for a message object of type 'new_word-request"
  "5c002061418e8070e6be74c25693fdf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<new_word-request>)))
  "Returns full string definition for message of type '<new_word-request>"
  (cl:format cl:nil "string word~%string grammar~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'new_word-request)))
  "Returns full string definition for message of type 'new_word-request"
  (cl:format cl:nil "string word~%string grammar~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <new_word-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'word))
     4 (cl:length (cl:slot-value msg 'grammar))
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <new_word-request>))
  "Converts a ROS message object to a list"
  (cl:list 'new_word-request
    (cl:cons ':word (word msg))
    (cl:cons ':grammar (grammar msg))
    (cl:cons ':label (label msg))
))
;//! \htmlinclude new_word-response.msg.html

(cl:defclass <new_word-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass new_word-response (<new_word-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <new_word-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'new_word-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<new_word-response> is deprecated: use qbo_listen-srv:new_word-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <new_word-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:ok-val is deprecated.  Use qbo_listen-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <new_word-response>) ostream)
  "Serializes a message object of type '<new_word-response>"
  (cl:let* ((signed (cl:slot-value msg 'ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <new_word-response>) istream)
  "Deserializes a message object of type '<new_word-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ok) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<new_word-response>)))
  "Returns string type for a service object of type '<new_word-response>"
  "qbo_listen/new_wordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'new_word-response)))
  "Returns string type for a service object of type 'new_word-response"
  "qbo_listen/new_wordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<new_word-response>)))
  "Returns md5sum for a message object of type '<new_word-response>"
  "5c002061418e8070e6be74c25693fdf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'new_word-response)))
  "Returns md5sum for a message object of type 'new_word-response"
  "5c002061418e8070e6be74c25693fdf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<new_word-response>)))
  "Returns full string definition for message of type '<new_word-response>"
  (cl:format cl:nil "int8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'new_word-response)))
  "Returns full string definition for message of type 'new_word-response"
  (cl:format cl:nil "int8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <new_word-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <new_word-response>))
  "Converts a ROS message object to a list"
  (cl:list 'new_word-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'new_word)))
  'new_word-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'new_word)))
  'new_word-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'new_word)))
  "Returns string type for a service object of type '<new_word>"
  "qbo_listen/new_word")