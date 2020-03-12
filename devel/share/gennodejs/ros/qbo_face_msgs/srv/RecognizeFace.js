// Auto-generated. Do not edit!

// (in-package qbo_face_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecognizeFaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.face = null;
    }
    else {
      if (initObj.hasOwnProperty('face')) {
        this.face = initObj.face
      }
      else {
        this.face = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeFaceRequest
    // Serialize message field [face]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.face, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeFaceRequest
    let len;
    let data = new RecognizeFaceRequest(null);
    // Deserialize message field [face]
    data.face = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.face);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_face_msgs/RecognizeFaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '855244bd6f46c32e7594974161feb421';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeFaceRequest(null);
    if (msg.face !== undefined) {
      resolved.face = sensor_msgs.msg.Image.Resolve(msg.face)
    }
    else {
      resolved.face = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class RecognizeFaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.recognized = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('recognized')) {
        this.recognized = initObj.recognized
      }
      else {
        this.recognized = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeFaceResponse
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [recognized]
    bufferOffset = _serializer.bool(obj.recognized, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeFaceResponse
    let len;
    let data = new RecognizeFaceResponse(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recognized]
    data.recognized = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_face_msgs/RecognizeFaceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc831a68fd288fbc64ac133eede0b36f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    bool recognized
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeFaceResponse(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.recognized !== undefined) {
      resolved.recognized = msg.recognized;
    }
    else {
      resolved.recognized = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RecognizeFaceRequest,
  Response: RecognizeFaceResponse,
  md5sum() { return '133962af4d41ec98941431b15a3d4b9d'; },
  datatype() { return 'qbo_face_msgs/RecognizeFace'; }
};
