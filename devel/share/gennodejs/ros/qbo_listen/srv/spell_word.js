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

class spell_wordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type spell_wordRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type spell_wordRequest
    let len;
    let data = new spell_wordRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_listen/spell_wordRequest';
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
    const resolved = new spell_wordRequest(null);
    return resolved;
    }
};

class spell_wordResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.word = null;
    }
    else {
      if (initObj.hasOwnProperty('word')) {
        this.word = initObj.word
      }
      else {
        this.word = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type spell_wordResponse
    // Serialize message field [word]
    bufferOffset = _serializer.string(obj.word, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type spell_wordResponse
    let len;
    let data = new spell_wordResponse(null);
    // Deserialize message field [word]
    data.word = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.word.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_listen/spell_wordResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf5cbdd7f0c6b9eaa898f882ab6eade6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string word
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new spell_wordResponse(null);
    if (msg.word !== undefined) {
      resolved.word = msg.word;
    }
    else {
      resolved.word = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: spell_wordRequest,
  Response: spell_wordResponse,
  md5sum() { return 'cf5cbdd7f0c6b9eaa898f882ab6eade6'; },
  datatype() { return 'qbo_listen/spell_word'; }
};
