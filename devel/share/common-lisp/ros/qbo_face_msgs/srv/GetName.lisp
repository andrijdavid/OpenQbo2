; Auto-generated. Do not edit!


(cl:in-package qbo_face_msgs-srv)


;//! \htmlinclude GetName-request.msg.html

(cl:defclass <GetName-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetName-request (<GetName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<GetName-request> is deprecated: use qbo_face_msgs-srv:GetName-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetName-request>) ostream)
  "Serializes a message object of type '<GetName-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetName-request>) istream)
  "Deserializes a message object of type '<GetName-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetName-request>)))
  "Returns string type for a service object of type '<GetName-request>"
  "qbo_face_msgs/GetNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetName-request)))
  "Returns string type for a service object of type 'GetName-request"
  "qbo_face_msgs/GetNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetName-request>)))
  "Returns md5sum for a message object of type '<GetName-request>"
  "cc831a68fd288fbc64ac133eede0b36f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetName-request)))
  "Returns md5sum for a message object of type 'GetName-request"
  "cc831a68fd288fbc64ac133eede0b36f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetName-request>)))
  "Returns full string definition for message of type '<GetName-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetName-request)))
  "Returns full string definition for message of type 'GetName-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetName-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetName-request
))
;//! \htmlinclude GetName-response.msg.html

(cl:defclass <GetName-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (recognized
    :reader recognized
    :initarg :recognized
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetName-response (<GetName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<GetName-response> is deprecated: use qbo_face_msgs-srv:GetName-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:name-val is deprecated.  Use qbo_face_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'recognized-val :lambda-list '(m))
(cl:defmethod recognized-val ((m <GetName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:recognized-val is deprecated.  Use qbo_face_msgs-srv:recognized instead.")
  (recognized m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetName-response>) ostream)
  "Serializes a message object of type '<GetName-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recognized) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetName-response>) istream)
  "Deserializes a message object of type '<GetName-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'recognized) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetName-response>)))
  "Returns string type for a service object of type '<GetName-response>"
  "qbo_face_msgs/GetNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetName-response)))
  "Returns string type for a service object of type 'GetName-response"
  "qbo_face_msgs/GetNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetName-response>)))
  "Returns md5sum for a message object of type '<GetName-response>"
  "cc831a68fd288fbc64ac133eede0b36f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetName-response)))
  "Returns md5sum for a message object of type 'GetName-response"
  "cc831a68fd288fbc64ac133eede0b36f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetName-response>)))
  "Returns full string definition for message of type '<GetName-response>"
  (cl:format cl:nil "string name~%bool recognized~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetName-response)))
  "Returns full string definition for message of type 'GetName-response"
  (cl:format cl:nil "string name~%bool recognized~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetName-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetName-response
    (cl:cons ':name (name msg))
    (cl:cons ':recognized (recognized msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetName)))
  'GetName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetName)))
  'GetName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetName)))
  "Returns string type for a service object of type '<GetName>"
  "qbo_face_msgs/GetName")