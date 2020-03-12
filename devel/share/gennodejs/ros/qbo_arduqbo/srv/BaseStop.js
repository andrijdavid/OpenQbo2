// Auto-generated. Do not edit!

// (in-package qbo_arduqbo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BaseStopRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseStopRequest
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseStopRequest
    let len;
    let data = new BaseStopRequest(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sender.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_arduqbo/BaseStopRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adc1836ec05769e51272f3bf2b237d1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sender
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaseStopRequest(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

class BaseStopResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseStopResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseStopResponse
    let len;
    let data = new BaseStopResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_arduqbo/BaseStopResponse';
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
    const resolved = new BaseStopResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: BaseStopRequest,
  Response: BaseStopResponse,
  md5sum() { return 'adc1836ec05769e51272f3bf2b237d1d'; },
  datatype() { return 'qbo_arduqbo/BaseStop'; }
};
