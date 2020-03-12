; Auto-generated. Do not edit!


(cl:in-package qbo_listen-srv)


;//! \htmlinclude free_train-request.msg.html

(cl:defclass <free_train-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass free_train-request (<free_train-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <free_train-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'free_train-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<free_train-request> is deprecated: use qbo_listen-srv:free_train-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <free_train-request>) ostream)
  "Serializes a message object of type '<free_train-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <free_train-request>) istream)
  "Deserializes a message object of type '<free_train-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<free_train-request>)))
  "Returns string type for a service object of type '<free_train-request>"
  "qbo_listen/free_trainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'free_train-request)))
  "Returns string type for a service object of type 'free_train-request"
  "qbo_listen/free_trainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<free_train-request>)))
  "Returns md5sum for a message object of type '<free_train-request>"
  "719c501bbbeb289704ee5d42501844db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'free_train-request)))
  "Returns md5sum for a message object of type 'free_train-request"
  "719c501bbbeb289704ee5d42501844db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<free_train-request>)))
  "Returns full string definition for message of type '<free_train-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'free_train-request)))
  "Returns full string definition for message of type 'free_train-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <free_train-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <free_train-request>))
  "Converts a ROS message object to a list"
  (cl:list 'free_train-request
))
;//! \htmlinclude free_train-response.msg.html

(cl:defclass <free_train-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:fixnum
    :initform 0))
)

(cl:defclass free_train-response (<free_train-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <free_train-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'free_train-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_listen-srv:<free_train-response> is deprecated: use qbo_listen-srv:free_train-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <free_train-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_listen-srv:ok-val is deprecated.  Use qbo_listen-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <free_train-response>) ostream)
  "Serializes a message object of type '<free_train-response>"
  (cl:let* ((signed (cl:slot-value msg 'ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <free_train-response>) istream)
  "Deserializes a message object of type '<free_train-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ok) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<free_train-response>)))
  "Returns string type for a service object of type '<free_train-response>"
  "qbo_listen/free_trainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'free_train-response)))
  "Returns string type for a service object of type 'free_train-response"
  "qbo_listen/free_trainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<free_train-response>)))
  "Returns md5sum for a message object of type '<free_train-response>"
  "719c501bbbeb289704ee5d42501844db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'free_train-response)))
  "Returns md5sum for a message object of type 'free_train-response"
  "719c501bbbeb289704ee5d42501844db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<free_train-response>)))
  "Returns full string definition for message of type '<free_train-response>"
  (cl:format cl:nil "int8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'free_train-response)))
  "Returns full string definition for message of type 'free_train-response"
  (cl:format cl:nil "int8 ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <free_train-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <free_train-response>))
  "Converts a ROS message object to a list"
  (cl:list 'free_train-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'free_train)))
  'free_train-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'free_train)))
  'free_train-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'free_train)))
  "Returns string type for a service object of type '<free_train>"
  "qbo_listen/free_train")