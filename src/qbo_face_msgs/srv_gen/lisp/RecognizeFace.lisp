; Auto-generated. Do not edit!


(cl:in-package qbo_face_msgs-srv)


;//! \htmlinclude RecognizeFace-request.msg.html

(cl:defclass <RecognizeFace-request> (roslisp-msg-protocol:ros-message)
  ((face
    :reader face
    :initarg :face
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass RecognizeFace-request (<RecognizeFace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeFace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeFace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<RecognizeFace-request> is deprecated: use qbo_face_msgs-srv:RecognizeFace-request instead.")))

(cl:ensure-generic-function 'face-val :lambda-list '(m))
(cl:defmethod face-val ((m <RecognizeFace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:face-val is deprecated.  Use qbo_face_msgs-srv:face instead.")
  (face m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeFace-request>) ostream)
  "Serializes a message object of type '<RecognizeFace-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'face) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeFace-request>) istream)
  "Deserializes a message object of type '<RecognizeFace-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'face) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeFace-request>)))
  "Returns string type for a service object of type '<RecognizeFace-request>"
  "qbo_face_msgs/RecognizeFaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeFace-request)))
  "Returns string type for a service object of type 'RecognizeFace-request"
  "qbo_face_msgs/RecognizeFaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeFace-request>)))
  "Returns md5sum for a message object of type '<RecognizeFace-request>"
  "133962af4d41ec98941431b15a3d4b9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeFace-request)))
  "Returns md5sum for a message object of type 'RecognizeFace-request"
  "133962af4d41ec98941431b15a3d4b9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeFace-request>)))
  "Returns full string definition for message of type '<RecognizeFace-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%sensor_msgs/Image face~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeFace-request)))
  "Returns full string definition for message of type 'RecognizeFace-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%sensor_msgs/Image face~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeFace-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'face))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeFace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeFace-request
    (cl:cons ':face (face msg))
))
;//! \htmlinclude RecognizeFace-response.msg.html

(cl:defclass <RecognizeFace-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RecognizeFace-response (<RecognizeFace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeFace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeFace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbo_face_msgs-srv:<RecognizeFace-response> is deprecated: use qbo_face_msgs-srv:RecognizeFace-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RecognizeFace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:name-val is deprecated.  Use qbo_face_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'recognized-val :lambda-list '(m))
(cl:defmethod recognized-val ((m <RecognizeFace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbo_face_msgs-srv:recognized-val is deprecated.  Use qbo_face_msgs-srv:recognized instead.")
  (recognized m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeFace-response>) ostream)
  "Serializes a message object of type '<RecognizeFace-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recognized) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeFace-response>) istream)
  "Deserializes a message object of type '<RecognizeFace-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeFace-response>)))
  "Returns string type for a service object of type '<RecognizeFace-response>"
  "qbo_face_msgs/RecognizeFaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeFace-response)))
  "Returns string type for a service object of type 'RecognizeFace-response"
  "qbo_face_msgs/RecognizeFaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeFace-response>)))
  "Returns md5sum for a message object of type '<RecognizeFace-response>"
  "133962af4d41ec98941431b15a3d4b9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeFace-response)))
  "Returns md5sum for a message object of type 'RecognizeFace-response"
  "133962af4d41ec98941431b15a3d4b9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeFace-response>)))
  "Returns full string definition for message of type '<RecognizeFace-response>"
  (cl:format cl:nil "string name~%bool recognized~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeFace-response)))
  "Returns full string definition for message of type 'RecognizeFace-response"
  (cl:format cl:nil "string name~%bool recognized~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeFace-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeFace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeFace-response
    (cl:cons ':name (name msg))
    (cl:cons ':recognized (recognized msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognizeFace)))
  'RecognizeFace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognizeFace)))
  'RecognizeFace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeFace)))
  "Returns string type for a service object of type '<RecognizeFace>"
  "qbo_face_msgs/RecognizeFace")