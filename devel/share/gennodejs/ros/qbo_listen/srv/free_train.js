// Auto-generated. Do not edit!

// (in-package qbo_listen.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class free_trainRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type free_trainRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type free_trainRequest
    let len;
    let data = new free_trainRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_listen/free_trainRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new free_trainRequest(null);
    return resolved;
    }
};

class free_trainResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type free_trainResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.int8(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type free_trainResponse
    let len;
    let data = new free_trainResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_listen/free_trainResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '719c501bbbeb289704ee5d42501844db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new free_trainResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: free_trainRequest,
  Response: free_trainResponse,
  md5sum() { return '719c501bbbeb289704ee5d42501844db'; },
  datatype() { return 'qbo_listen/free_train'; }
};
