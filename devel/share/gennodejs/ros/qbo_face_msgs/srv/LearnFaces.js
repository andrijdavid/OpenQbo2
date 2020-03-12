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

class LearnFacesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.person_name = null;
    }
    else {
      if (initObj.hasOwnProperty('person_name')) {
        this.person_name = initObj.person_name
      }
      else {
        this.person_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LearnFacesRequest
    // Serialize message field [person_name]
    bufferOffset = _serializer.string(obj.person_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LearnFacesRequest
    let len;
    let data = new LearnFacesRequest(null);
    // Deserialize message field [person_name]
    data.person_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.person_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_face_msgs/LearnFacesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2d6bff7c373fbffae616009ee6a2c27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    string person_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LearnFacesRequest(null);
    if (msg.person_name !== undefined) {
      resolved.person_name = msg.person_name;
    }
    else {
      resolved.person_name = ''
    }

    return resolved;
    }
};

class LearnFacesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.learned = null;
    }
    else {
      if (initObj.hasOwnProperty('learned')) {
        this.learned = initObj.learned
      }
      else {
        this.learned = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LearnFacesResponse
    // Serialize message field [learned]
    bufferOffset = _serializer.bool(obj.learned, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LearnFacesResponse
    let len;
    let data = new LearnFacesResponse(null);
    // Deserialize message field [learned]
    data.learned = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_face_msgs/LearnFacesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9e56102f89a9558f44983cd3c0495b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool learned
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LearnFacesResponse(null);
    if (msg.learned !== undefined) {
      resolved.learned = msg.learned;
    }
    else {
      resolved.learned = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LearnFacesRequest,
  Response: LearnFacesResponse,
  md5sum() { return '202b3c7a0bdc1cb06c9cb185e964b34a'; },
  datatype() { return 'qbo_face_msgs/LearnFaces'; }
};
