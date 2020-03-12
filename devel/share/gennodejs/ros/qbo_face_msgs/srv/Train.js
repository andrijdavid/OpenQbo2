// Auto-generated. Do not edit!

// (in-package qbo_face_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TrainRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update_path = null;
    }
    else {
      if (initObj.hasOwnProperty('update_path')) {
        this.update_path = initObj.update_path
      }
      else {
        this.update_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrainRequest
    // Serialize message field [update_path]
    bufferOffset = _serializer.string(obj.update_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrainRequest
    let len;
    let data = new TrainRequest(null);
    // Deserialize message field [update_path]
    data.update_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.update_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_face_msgs/TrainRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1aad220b587973074d9a28f4b36ce319';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    string update_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrainRequest(null);
    if (msg.update_path !== undefined) {
      resolved.update_path = msg.update_path;
    }
    else {
      resolved.update_path = ''
    }

    return resolved;
    }
};

class TrainResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taught = null;
    }
    else {
      if (initObj.hasOwnProperty('taught')) {
        this.taught = initObj.taught
      }
      else {
        this.taught = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrainResponse
    // Serialize message field [taught]
    bufferOffset = _serializer.bool(obj.taught, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrainResponse
    let len;
    let data = new TrainResponse(null);
    // Deserialize message field [taught]
    data.taught = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_face_msgs/TrainResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '045e724eaf9efdeff4f56e372f7e1c92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool taught
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrainResponse(null);
    if (msg.taught !== undefined) {
      resolved.taught = msg.taught;
    }
    else {
      resolved.taught = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TrainRequest,
  Response: TrainResponse,
  md5sum() { return '3f36036a94628f4a1bdb3c1a8d63219a'; },
  datatype() { return 'qbo_face_msgs/Train'; }
};
