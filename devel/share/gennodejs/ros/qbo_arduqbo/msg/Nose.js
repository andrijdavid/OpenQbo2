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

class Nose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Nose
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Nose
    let len;
    let data = new Nose(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qbo_arduqbo/Nose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36f63d241a341fc5ac60fd9ee64d4836';
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
    uint8 color
    
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
    const resolved = new Nose(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    return resolved;
    }
};

module.exports = Nose;
