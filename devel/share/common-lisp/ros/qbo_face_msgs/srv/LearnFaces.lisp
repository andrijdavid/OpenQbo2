; Auto-generated. Do not edit!


(cl:in-package qbo_face_msgs-srv)


;//! \htmlinclude LearnFaces-request.msg.html

(cl:defclass <LearnFaces-request> (roslisp-msg-protocol:ros-message)
  ((person_name
    :reader person_name
    :initarg :person_name
    :type cl:string
    :initform ""))
)

(cl:defclass LearnFaces-request (<LearnFaces-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearnFaces-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearnFaces-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<LearnFaces-request> is deprecated: use qbo_face_msgs-srv:LearnFaces-request instead.")))

(cl:ensure-generic-function 'person_name-val :lambda-list '(m))
(cl:defmethod person_name-val ((m <LearnFaces-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:person_name-val is deprecated.  Use qbo_face_msgs-srv:person_name instead.")
  (person_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearnFaces-request>) ostream)
  "Serializes a message object of type '<LearnFaces-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'person_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'person_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearnFaces-request>) istream)
  "Deserializes a message object of type '<LearnFaces-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'person_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'person_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearnFaces-request>)))
  "Returns string type for a service object of type '<LearnFaces-request>"
  "qbo_face_msgs/LearnFacesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearnFaces-request)))
  "Returns string type for a service object of type 'LearnFaces-request"
  "qbo_face_msgs/LearnFacesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearnFaces-request>)))
  "Returns md5sum for a message object of type '<LearnFaces-request>"
  "202b3c7a0bdc1cb06c9cb185e964b34a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearnFaces-request)))
  "Returns md5sum for a message object of type 'LearnFaces-request"
  "202b3c7a0bdc1cb06c9cb185e964b34a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearnFaces-request>)))
  "Returns full string definition for message of type '<LearnFaces-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%string person_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearnFaces-request)))
  "Returns full string definition for message of type 'LearnFaces-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%string person_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearnFaces-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'person_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearnFaces-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LearnFaces-request
    (cl:cons ':person_name (person_name msg))
))
;//! \htmlinclude LearnFaces-response.msg.html

(cl:defclass <LearnFaces-response> (roslisp-msg-protocol:ros-message)
  ((learned
    :reader learned
    :initarg :learned
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LearnFaces-response (<LearnFaces-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearnFaces-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearnFaces-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<LearnFaces-response> is deprecated: use qbo_face_msgs-srv:LearnFaces-response instead.")))

(cl:ensure-generic-function 'learned-val :lambda-list '(m))
(cl:defmethod learned-val ((m <LearnFaces-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:learned-val is deprecated.  Use qbo_face_msgs-srv:learned instead.")
  (learned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearnFaces-response>) ostream)
  "Serializes a message object of type '<LearnFaces-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'learned) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearnFaces-response>) istream)
  "Deserializes a message object of type '<LearnFaces-response>"
    (cl:setf (cl:slot-value msg 'learned) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearnFaces-response>)))
  "Returns string type for a service object of type '<LearnFaces-response>"
  "qbo_face_msgs/LearnFacesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearnFaces-response)))
  "Returns string type for a service object of type 'LearnFaces-response"
  "qbo_face_msgs/LearnFacesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearnFaces-response>)))
  "Returns md5sum for a message object of type '<LearnFaces-response>"
  "202b3c7a0bdc1cb06c9cb185e964b34a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearnFaces-response)))
  "Returns md5sum for a message object of type 'LearnFaces-response"
  "202b3c7a0bdc1cb06c9cb185e964b34a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearnFaces-response>)))
  "Returns full string definition for message of type '<LearnFaces-response>"
  (cl:format cl:nil "bool learned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearnFaces-response)))
  "Returns full string definition for message of type 'LearnFaces-response"
  (cl:format cl:nil "bool learned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearnFaces-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearnFaces-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LearnFaces-response
    (cl:cons ':learned (learned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LearnFaces)))
  'LearnFaces-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LearnFaces)))
  'LearnFaces-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearnFaces)))
  "Returns string type for a service object of type '<LearnFaces>"
  "qbo_face_msgs/LearnFaces")