; Auto-generated. Do not edit!


(cl:in-package qbo_listen-srv)


;//! \htmlinclude spell_word-request.msg.html

(cl:defclass <spell_word-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass spell_word-request (<spell_word-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <spell_word-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'spell_word-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<spell_word-request> is deprecated: use qbo_listen-srv:spell_word-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <spell_word-request>) ostream)
  "Serializes a message object of type '<spell_word-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <spell_word-request>) istream)
  "Deserializes a message object of type '<spell_word-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<spell_word-request>)))
  "Returns string type for a service object of type '<spell_word-request>"
  "qbo_listen/spell_wordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'spell_word-request)))
  "Returns string type for a service object of type 'spell_word-request"
  "qbo_listen/spell_wordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<spell_word-request>)))
  "Returns md5sum for a message object of type '<spell_word-request>"
  "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'spell_word-request)))
  "Returns md5sum for a message object of type 'spell_word-request"
  "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<spell_word-request>)))
  "Returns full string definition for message of type '<spell_word-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'spell_word-request)))
  "Returns full string definition for message of type 'spell_word-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <spell_word-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <spell_word-request>))
  "Converts a ROS message object to a list"
  (cl:list 'spell_word-request
))
;//! \htmlinclude spell_word-response.msg.html

(cl:defclass <spell_word-response> (roslisp-msg-protocol:ros-message)
  ((word
    :reader word
    :initarg :word
    :type cl:string
    :initform ""))
)

(cl:defclass spell_word-response (<spell_word-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <spell_word-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'spell_word-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<spell_word-response> is deprecated: use qbo_listen-srv:spell_word-response instead.")))

(cl:ensure-generic-function 'word-val :lambda-list '(m))
(cl:defmethod word-val ((m <spell_word-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:word-val is deprecated.  Use qbo_listen-srv:word instead.")
  (word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <spell_word-response>) ostream)
  "Serializes a message object of type '<spell_word-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'word))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <spell_word-response>) istream)
  "Deserializes a message object of type '<spell_word-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<spell_word-response>)))
  "Returns string type for a service object of type '<spell_word-response>"
  "qbo_listen/spell_wordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'spell_word-response)))
  "Returns string type for a service object of type 'spell_word-response"
  "qbo_listen/spell_wordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<spell_word-response>)))
  "Returns md5sum for a message object of type '<spell_word-response>"
  "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'spell_word-response)))
  "Returns md5sum for a message object of type 'spell_word-response"
  "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<spell_word-response>)))
  "Returns full string definition for message of type '<spell_word-response>"
  (cl:format cl:nil "string word~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'spell_word-response)))
  "Returns full string definition for message of type 'spell_word-response"
  (cl:format cl:nil "string word~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <spell_word-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'word))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <spell_word-response>))
  "Converts a ROS message object to a list"
  (cl:list 'spell_word-response
    (cl:cons ':word (word msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'spell_word)))
  'spell_word-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'spell_word)))
  'spell_word-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'spell_word)))
  "Returns string type for a service object of type '<spell_word>"
  "qbo_listen/spell_word")