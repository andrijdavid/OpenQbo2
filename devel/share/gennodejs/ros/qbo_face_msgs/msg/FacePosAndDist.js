// Auto-generated. Do not edit!

// (in-package qbo_face_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FacePosAndDist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.u = null;
      this.v = null;
      this.distance_to_head = null;
      this.image_width = null;
      this.image_height = null;
      this.face_detected = null;
      this.type_of_tracking = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_head')) {
        this.distance_to_head = initObj.distance_to_head
      }
      else {
        this.distance_to_head = 0.0;
      }
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = 0;
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = 0;
      }
      if (initObj.hasOwnProperty('face_detected')) {
        this.face_detected = initObj.face_detected
      }
      else {
        this.face_detected = false;
      }
      if (initObj.hasOwnProperty('type_of_tracking')) {
        this.type_of_tracking = initObj.type_of_tracking
      }
      else {
        this.type_of_tracking = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FacePosAndDist
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [u]
    bufferOffset = _serializer.float32(obj.u, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float32(obj.v, buffer, bufferOffset);
    // Serialize message field [distance_to_head]
    bufferOffset = _serializer.float32(obj.distance_to_head, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = _serializer.int32(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int32(obj.image_height, buffer, bufferOffset);
    // Serialize message field [face_detected]
    bufferOffset = _serializer.bool(obj.face_detected, buffer, bufferOffset);
    // Serialize message field [type_of_tracking]
    bufferOffset = _serializer.string(obj.type_of_tracking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FacePosAndDist
    let len;
    let data = new FacePosAndDist(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [u]
    data.u = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_head]
    data.distance_to_head = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [face_detected]
    data.face_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [type_of_tracking]
    data.type_of_tracking = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.type_of_tracking.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qbo_face_msgs/FacePosAndDist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25b96c14697425c4e9c9aa5538bcad7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Software License Agreement (LGPL v2.1 License)
    #
    # Copyright (c) 2012 Thecorpora, S.L.
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
    float32 u
    float32 v
    float32 distance_to_head
    int32 image_width
    int32 image_height
    bool face_detected
    string type_of_tracking
    
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
    const resolved = new FacePosAndDist(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.distance_to_head !== undefined) {
      resolved.distance_to_head = msg.distance_to_head;
    }
    else {
      resolved.distance_to_head = 0.0
    }

    if (msg.image_width !== undefined) {
      resolved.image_width = msg.image_width;
    }
    else {
      resolved.image_width = 0
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = msg.image_height;
    }
    else {
      resolved.image_height = 0
    }

    if (msg.face_detected !== undefined) {
      resolved.face_detected = msg.face_detected;
    }
    else {
      resolved.face_detected = false
    }

    if (msg.type_of_tracking !== undefined) {
      resolved.type_of_tracking = msg.type_of_tracking;
    }
    else {
      resolved.type_of_tracking = ''
    }

    return resolved;
    }
};

module.exports = FacePosAndDist;
