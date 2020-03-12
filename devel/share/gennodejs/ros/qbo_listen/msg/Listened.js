// Auto-generated. Do not edit!

// (in-package qbo_listen.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Listened {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
      this.not_msg = null;
      this.total_score = null;
      this.min_score = null;
      this.all_score = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('not_msg')) {
        this.not_msg = initObj.not_msg
      }
      else {
        this.not_msg = '';
      }
      if (initObj.hasOwnProperty('total_score')) {
        this.total_score = initObj.total_score
      }
      else {
        this.total_score = 0.0;
      }
      if (initObj.hasOwnProperty('min_score')) {
        this.min_score = initObj.min_score
      }
      else {
        this.min_score = 0.0;
      }
      if (initObj.hasOwnProperty('all_score')) {
        this.all_score = initObj.all_score
      }
      else {
        this.all_score = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Listened
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [not_msg]
    bufferOffset = _serializer.string(obj.not_msg, buffer, bufferOffset);
    // Serialize message field [total_score]
    bufferOffset = _serializer.float64(obj.total_score, buffer, bufferOffset);
    // Serialize message field [min_score]
    bufferOffset = _serializer.float64(obj.min_score, buffer, bufferOffset);
    // Serialize message field [all_score]
    bufferOffset = _serializer.string(obj.all_score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Listened
    let len;
    let data = new Listened(null);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [not_msg]
    data.not_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [total_score]
    data.total_score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_score]
    data.min_score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [all_score]
    data.all_score = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    length += object.not_msg.length;
    length += object.all_score.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qbo_listen/Listened';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e6cf606f955a4c6315fb083f058ab13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Copyright (c) 2012-2013 TheCorpora SL
    #
    #This library is free software; you can redistribute it and/or modify 
    #it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; 
    #either version 3 of the License, or (at your option) any later version. 
    #
    #This library is distributed in the hope that it will be useful, 
    #but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or 
    #FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.
    #
    #You should have received a copy of the GNU Lesser General Public License along with this library; 
    #if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
    
    string msg
    string not_msg
    float64 total_score
    float64 min_score
    string all_score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Listened(null);
    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.not_msg !== undefined) {
      resolved.not_msg = msg.not_msg;
    }
    else {
      resolved.not_msg = ''
    }

    if (msg.total_score !== undefined) {
      resolved.total_score = msg.total_score;
    }
    else {
      resolved.total_score = 0.0
    }

    if (msg.min_score !== undefined) {
      resolved.min_score = msg.min_score;
    }
    else {
      resolved.min_score = 0.0
    }

    if (msg.all_score !== undefined) {
      resolved.all_score = msg.all_score;
    }
    else {
      resolved.all_score = ''
    }

    return resolved;
    }
};

module.exports = Listened;
