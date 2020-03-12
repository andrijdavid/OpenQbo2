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

class new_wordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.word = null;
      this.grammar = null;
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('word')) {
        this.word = initObj.word
      }
      else {
        this.word = '';
      }
      if (initObj.hasOwnProperty('grammar')) {
        this.grammar = initObj.grammar
      }
      else {
        this.grammar = '';
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type new_wordRequest
    // Serialize message field [word]
    bufferOffset = _serializer.string(obj.word, buffer, bufferOffset);
    // Serialize message field [grammar]
    bufferOffset = _serializer.string(obj.grammar, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type new_wordRequest
    let len;
    let data = new new_wordRequest(null);
    // Deserialize message field [word]
    data.word = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [grammar]
    data.grammar = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.word.length;
    length += object.grammar.length;
    length += object.label.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_listen/new_wordRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '913028122c3cc118c51c7ef5177a9a46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string word
    string grammar
    string label
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new new_wordRequest(null);
    if (msg.word !== undefined) {
      resolved.word = msg.word;
    }
    else {
      resolved.word = ''
    }

    if (msg.grammar !== undefined) {
      resolved.grammar = msg.grammar;
    }
    else {
      resolved.grammar = ''
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    return resolved;
    }
};

class new_wordResponse {
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
    // Serializes a message object of type new_wordResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.int8(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type new_wordResponse
    let len;
    let data = new new_wordResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_listen/new_wordResponse';
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
    const resolved = new new_wordResponse(null);
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
  Request: new_wordRequest,
  Response: new_wordResponse,
  md5sum() { return '5c002061418e8070e6be74c25693fdf1'; },
  datatype() { return 'qbo_listen/new_word'; }
};
