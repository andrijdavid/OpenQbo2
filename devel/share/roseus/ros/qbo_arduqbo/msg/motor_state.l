;; Auto-generated. Do not edit!


(when (boundp 'qbo_arduqbo::motor_state)
  (if (not (find-package "QBO_ARDUQBO"))
    (make-package "QBO_ARDUQBO"))
  (shadow 'motor_state (find-package "QBO_ARDUQBO")))
(unless (find-package "QBO_ARDUQBO::MOTOR_STATE")
  (make-package "QBO_ARDUQBO::MOTOR_STATE"))

(in-package "ROS")
;;//! \htmlinclude motor_state.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass qbo_arduqbo::motor_state
  :super ros::object
  :slots (_header _id _goal _position _error _speed _load _voltage _temperature _moving ))

(defmethod qbo_arduqbo::motor_state
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:goal __goal) 0)
    ((:position __position) 0)
    ((:error __error) 0)
    ((:speed __speed) 0)
    ((:load __load) 0.0)
    ((:voltage __voltage) 0.0)
    ((:temperature __temperature) 0)
    ((:moving __moving) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _goal (round __goal))
   (setq _position (round __position))
   (setq _error (round __error))
   (setq _speed (round __speed))
   (setq _load (float __load))
   (setq _voltage (float __voltage))
   (setq _temperature (round __temperature))
   (setq _moving __moving)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; int32 _goal
    4
    ;; int32 _position
    4
    ;; int32 _error
    4
    ;; int32 _speed
    4
    ;; float64 _load
    8
    ;; float64 _voltage
    8
    ;; int32 _temperature
    4
    ;; bool _moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _goal
       (write-long _goal s)
     ;; int32 _position
       (write-long _position s)
     ;; int32 _error
       (write-long _error s)
     ;; int32 _speed
       (write-long _speed s)
     ;; float64 _load
       (sys::poke _load (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; bool _moving
       (if _moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _load
     (setq _load (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _moving
     (setq _moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get qbo_arduqbo::motor_state :md5sum-) "7c778bda1190d2be2e7c5f3fad8d4eda")
(setf (get qbo_arduqbo::motor_state :datatype-) "qbo_arduqbo/motor_state")
(setf (get qbo_arduqbo::motor_state :definition-)
      "Header header
int32 id            # motor id
int32 goal          # commanded position (in encoder units)
int32 position      # current position (in encoder units)
int32 error         # difference between current and goal positions
int32 speed         # current speed (0.111 rpm per unit)
float64 load        # current load - ratio of applied torque over maximum torque
float64 voltage     # current voltage (V)
int32 temperature   # current temperature (degrees Celsius)
bool moving         # whether the motor is currently in motion

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

")



(provide :qbo_arduqbo/motor_state "7c778bda1190d2be2e7c5f3fad8d4eda")


