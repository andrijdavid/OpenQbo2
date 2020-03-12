; Auto-generated. Do not edit!


(cl:in-package qbo_face_msgs-srv)


;//! \htmlinclude Train-request.msg.html

(cl:defclass <Train-request> (roslisp-msg-protocol:ros-message)
  ((update_path
    :reader update_path
    :initarg :update_path
    :type cl:string
    :initform ""))
)

(cl:defclass Train-request (<Train-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Train-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Train-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<Train-request> is deprecated: use qbo_face_msgs-srv:Train-request instead.")))

(cl:ensure-generic-function 'update_path-val :lambda-list '(m))
(cl:defmethod update_path-val ((m <Train-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:update_path-val is deprecated.  Use qbo_face_msgs-srv:update_path instead.")
  (update_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Train-request>) ostream)
  "Serializes a message object of type '<Train-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Train-request>) istream)
  "Deserializes a message object of type '<Train-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Train-request>)))
  "Returns string type for a service object of type '<Train-request>"
  "qbo_face_msgs/TrainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Train-request)))
  "Returns string type for a service object of type 'Train-request"
  "qbo_face_msgs/TrainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Train-request>)))
  "Returns md5sum for a message object of type '<Train-request>"
  "3f36036a94628f4a1bdb3c1a8d63219a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Train-request)))
  "Returns md5sum for a message object of type 'Train-request"
  "3f36036a94628f4a1bdb3c1a8d63219a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Train-request>)))
  "Returns full string definition for message of type '<Train-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%string update_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Train-request)))
  "Returns full string definition for message of type 'Train-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%string update_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Train-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'update_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Train-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Train-request
    (cl:cons ':update_path (update_path msg))
))
;//! \htmlinclude Train-response.msg.html

(cl:defclass <Train-response> (roslisp-msg-protocol:ros-message)
  ((taught
    :reader taught
    :initarg :taught
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Train-response (<Train-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Train-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Train-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<Train-response> is deprecated: use qbo_face_msgs-srv:Train-response instead.")))

(cl:ensure-generic-function 'taught-val :lambda-list '(m))
(cl:defmethod taught-val ((m <Train-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:taught-val is deprecated.  Use qbo_face_msgs-srv:taught instead.")
  (taught m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Train-response>) ostream)
  "Serializes a message object of type '<Train-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'taught) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Train-response>) istream)
  "Deserializes a message object of type '<Train-response>"
    (cl:setf (cl:slot-value msg 'taught) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Train-response>)))
  "Returns string type for a service object of type '<Train-response>"
  "qbo_face_msgs/TrainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Train-response)))
  "Returns string type for a service object of type 'Train-response"
  "qbo_face_msgs/TrainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Train-response>)))
  "Returns md5sum for a message object of type '<Train-response>"
  "3f36036a94628f4a1bdb3c1a8d63219a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Train-response)))
  "Returns md5sum for a message object of type 'Train-response"
  "3f36036a94628f4a1bdb3c1a8d63219a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Train-response>)))
  "Returns full string definition for message of type '<Train-response>"
  (cl:format cl:nil "bool taught~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Train-response)))
  "Returns full string definition for message of type 'Train-response"
  (cl:format cl:nil "bool taught~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Train-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Train-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Train-response
    (cl:cons ':taught (taught msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Train)))
  'Train-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Train)))
  'Train-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Train)))
  "Returns string type for a service object of type '<Train>"
  "qbo_face_msgs/Train")