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

class Irs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ir0 = null;
      this.ir1 = null;
      this.ir2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ir0')) {
        this.ir0 = initObj.ir0
      }
      else {
        this.ir0 = 0;
      }
      if (initObj.hasOwnProperty('ir1')) {
        this.ir1 = initObj.ir1
      }
      else {
        this.ir1 = 0;
      }
      if (initObj.hasOwnProperty('ir2')) {
        this.ir2 = initObj.ir2
      }
      else {
        this.ir2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Irs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ir0]
    bufferOffset = _serializer.uint8(obj.ir0, buffer, bufferOffset);
    // Serialize message field [ir1]
    bufferOffset = _serializer.uint8(obj.ir1, buffer, bufferOffset);
    // Serialize message field [ir2]
    bufferOffset = _serializer.uint8(obj.ir2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Irs
    let len;
    let data = new Irs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ir0]
    data.ir0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ir1]
    data.ir1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ir2]
    data.ir2 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qbo_arduqbo/Irs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98d76e6b27680041844888fa67ba28e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Software License Agreement (LGPL v2.1 License)
    #
    # Copyright (c) 2012 Thecorpora, Inc.
    #
    # This library is free software; you can redistribute it and/or modify 
    # it under the terms of the GNU Lesser General Public License as published
    # by the Free Software Foundation; either version 2.1 of the License, 
    # or (at your option) any later version.
    #
    # This library is distributed in the hope that it will be useful, but 
    # WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
    # or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public 
    # License for more details.
    #  
    # You should have received a copy of the GNU General Public License 
    # along with this program; if not, write to the Free Software 
    # Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, 
    # MA 02110-1301, USA.# Software License Agreement (LGPL v2.1 License)
    #
    # Copyright (c) 2012 Thecorpora, Inc.
    #
    # This library is free software; you can redistribute it and/or modify 
    # it under the terms of the GNU Lesser General Public License as published
    # by the Free Software Foundation; either version 2.1 of the License, 
    # or (at your option) any later version.
    #
    # This library is distributed in the hope that it will be useful, but 
    # WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
    # or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public 
    # License for more details.
    #  
    # You should have received a copy of the GNU General Public License 
    # along with this program; if not, write to the Free Software 
    # Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, 
    # MA 02110-1301, USA.
    
    Header header
    uint8 ir0
    uint8 ir1
    uint8 ir2
    
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
    const resolved = new Irs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ir0 !== undefined) {
      resolved.ir0 = msg.ir0;
    }
    else {
      resolved.ir0 = 0
    }

    if (msg.ir1 !== undefined) {
      resolved.ir1 = msg.ir1;
    }
    else {
      resolved.ir1 = 0
    }

    if (msg.ir2 !== undefined) {
      resolved.ir2 = msg.ir2;
    }
    else {
      resolved.ir2 = 0
    }

    return resolved;
    }
};

module.exports = Irs;
