;; Auto-generated. Do not edit!


(when (boundp 'qbo_face_msgs::RecognizeFace)
  (if (not (find-package "QBO_FACE_MSGS"))
    (make-package "QBO_FACE_MSGS"))
  (shadow 'RecognizeFace (find-package "QBO_FACE_MSGS")))
(unless (find-package "QBO_FACE_MSGS::RECOGNIZEFACE")
  (make-package "QBO_FACE_MSGS::RECOGNIZEFACE"))
(unless (find-package "QBO_FACE_MSGS::RECOGNIZEFACEREQUEST")
  (make-package "QBO_FACE_MSGS::RECOGNIZEFACEREQUEST"))
(unless (find-package "QBO_FACE_MSGS::RECOGNIZEFACERESPONSE")
  (make-package "QBO_FACE_MSGS::RECOGNIZEFACERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass qbo_face_msgs::RecognizeFaceRequest
  :super ros::object
  :slots (_face ))

(defmethod qbo_face_msgs::RecognizeFaceRequest
  (:init
   (&key
    ((:face __face) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _face __face)
   self)
  (:face
   (&rest __face)
   (if (keywordp (car __face))
       (send* _face __face)
     (progn
       (if __face (setq _face (car __face)))
       _face)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _face
    (send _face :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _face
       (send _face :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _face
     (send _face :deserialize buf ptr-) (incf ptr- (send _face :serialization-length))
   ;;
   self)
  )

(defclass qbo_face_msgs::RecognizeFaceResponse
  :super ros::object
  :slots (_name _recognized ))

(defmethod qbo_face_msgs::RecognizeFaceResponse
  (:init
   (&key
    ((:name __name) "")
    ((:recognized __recognized) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _recognized __recognized)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:recognized
   (&optional __recognized)
   (if __recognized (setq _recognized __recognized)) _recognized)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _recognized
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _recognized
       (if _recognized (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _recognized
     (setq _recognized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qbo_face_msgs::RecognizeFace
  :super ros::object
  :slots ())

(setf (get qbo_face_msgs::RecognizeFace :md5sum-) "133962af4d41ec98941431b15a3d4b9d")
(setf (get qbo_face_msgs::RecognizeFace :datatype-) "qbo_face_msgs/RecognizeFace")
(setf (get qbo_face_msgs::RecognizeFace :request) qbo_face_msgs::RecognizeFaceRequest)
(setf (get qbo_face_msgs::RecognizeFace :response) qbo_face_msgs::RecognizeFaceResponse)

(defmethod qbo_face_msgs::RecognizeFaceRequest
  (:response () (instance qbo_face_msgs::RecognizeFaceResponse :init)))

(setf (get qbo_face_msgs::RecognizeFaceRequest :md5sum-) "133962af4d41ec98941431b15a3d4b9d")
(setf (get qbo_face_msgs::RecognizeFaceRequest :datatype-) "qbo_face_msgs/RecognizeFaceRequest")
(setf (get qbo_face_msgs::RecognizeFaceRequest :definition-)
      "


















sensor_msgs/Image face

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
string name
bool recognized

")

(setf (get qbo_face_msgs::RecognizeFaceResponse :md5sum-) "133962af4d41ec98941431b15a3d4b9d")
(setf (get qbo_face_msgs::RecognizeFaceResponse :datatype-) "qbo_face_msgs/RecognizeFaceResponse")
(setf (get qbo_face_msgs::RecognizeFaceResponse :definition-)
      "


















sensor_msgs/Image face

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
string name
bool recognized

")



(provide :qbo_face_msgs/RecognizeFace "133962af4d41ec98941431b15a3d4b9d")


