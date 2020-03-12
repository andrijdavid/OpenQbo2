// Auto-generated. Do not edit!

// (in-package qbo_arduqbo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class motor_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.goal = null;
      this.position = null;
      this.error = null;
      this.speed = null;
      this.load = null;
      this.voltage = null;
      this.temperature = null;
      this.moving = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = 0.0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_state
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = _serializer.int32(obj.goal, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.int32(obj.error, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    // Serialize message field [load]
    bufferOffset = _serializer.float64(obj.load, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [moving]
    bufferOffset = _serializer.bool(obj.moving, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_state
    let len;
    let data = new motor_state(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [load]
    data.load = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [moving]
    data.moving = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qbo_arduqbo/motor_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c778bda1190d2be2e7c5f3fad8d4eda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_state(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = 0.0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = false
    }

    return resolved;
    }
};

module.exports = motor_state;
