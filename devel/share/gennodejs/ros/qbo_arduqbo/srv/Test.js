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

class TestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestRequest
    let len;
    let data = new TestRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_arduqbo/TestRequest';
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
    const resolved = new TestRequest(null);
    return resolved;
    }
};

class TestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SRFcount = null;
      this.SRFAddress = null;
      this.SRFNotFound = null;
      this.Gyroscope = null;
      this.Accelerometer = null;
      this.LCD = null;
      this.Qboard3 = null;
      this.Qboard1 = null;
      this.Qboard2 = null;
      this.rightMotor = null;
      this.leftMotor = null;
    }
    else {
      if (initObj.hasOwnProperty('SRFcount')) {
        this.SRFcount = initObj.SRFcount
      }
      else {
        this.SRFcount = 0;
      }
      if (initObj.hasOwnProperty('SRFAddress')) {
        this.SRFAddress = initObj.SRFAddress
      }
      else {
        this.SRFAddress = [];
      }
      if (initObj.hasOwnProperty('SRFNotFound')) {
        this.SRFNotFound = initObj.SRFNotFound
      }
      else {
        this.SRFNotFound = [];
      }
      if (initObj.hasOwnProperty('Gyroscope')) {
        this.Gyroscope = initObj.Gyroscope
      }
      else {
        this.Gyroscope = false;
      }
      if (initObj.hasOwnProperty('Accelerometer')) {
        this.Accelerometer = initObj.Accelerometer
      }
      else {
        this.Accelerometer = false;
      }
      if (initObj.hasOwnProperty('LCD')) {
        this.LCD = initObj.LCD
      }
      else {
        this.LCD = false;
      }
      if (initObj.hasOwnProperty('Qboard3')) {
        this.Qboard3 = initObj.Qboard3
      }
      else {
        this.Qboard3 = false;
      }
      if (initObj.hasOwnProperty('Qboard1')) {
        this.Qboard1 = initObj.Qboard1
      }
      else {
        this.Qboard1 = false;
      }
      if (initObj.hasOwnProperty('Qboard2')) {
        this.Qboard2 = initObj.Qboard2
      }
      else {
        this.Qboard2 = false;
      }
      if (initObj.hasOwnProperty('rightMotor')) {
        this.rightMotor = initObj.rightMotor
      }
      else {
        this.rightMotor = false;
      }
      if (initObj.hasOwnProperty('leftMotor')) {
        this.leftMotor = initObj.leftMotor
      }
      else {
        this.leftMotor = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestResponse
    // Serialize message field [SRFcount]
    bufferOffset = _serializer.int8(obj.SRFcount, buffer, bufferOffset);
    // Serialize message field [SRFAddress]
    bufferOffset = _arraySerializer.int16(obj.SRFAddress, buffer, bufferOffset, null);
    // Serialize message field [SRFNotFound]
    bufferOffset = _arraySerializer.int16(obj.SRFNotFound, buffer, bufferOffset, null);
    // Serialize message field [Gyroscope]
    bufferOffset = _serializer.bool(obj.Gyroscope, buffer, bufferOffset);
    // Serialize message field [Accelerometer]
    bufferOffset = _serializer.bool(obj.Accelerometer, buffer, bufferOffset);
    // Serialize message field [LCD]
    bufferOffset = _serializer.bool(obj.LCD, buffer, bufferOffset);
    // Serialize message field [Qboard3]
    bufferOffset = _serializer.bool(obj.Qboard3, buffer, bufferOffset);
    // Serialize message field [Qboard1]
    bufferOffset = _serializer.bool(obj.Qboard1, buffer, bufferOffset);
    // Serialize message field [Qboard2]
    bufferOffset = _serializer.bool(obj.Qboard2, buffer, bufferOffset);
    // Serialize message field [rightMotor]
    bufferOffset = _serializer.bool(obj.rightMotor, buffer, bufferOffset);
    // Serialize message field [leftMotor]
    bufferOffset = _serializer.bool(obj.leftMotor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestResponse
    let len;
    let data = new TestResponse(null);
    // Deserialize message field [SRFcount]
    data.SRFcount = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [SRFAddress]
    data.SRFAddress = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [SRFNotFound]
    data.SRFNotFound = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [Gyroscope]
    data.Gyroscope = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Accelerometer]
    data.Accelerometer = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LCD]
    data.LCD = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Qboard3]
    data.Qboard3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Qboard1]
    data.Qboard1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Qboard2]
    data.Qboard2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rightMotor]
    data.rightMotor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leftMotor]
    data.leftMotor = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.SRFAddress.length;
    length += 2 * object.SRFNotFound.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qbo_arduqbo/TestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f8d7da5192e662dd9f7974027b7e5ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 SRFcount
    int16[] SRFAddress
    int16[] SRFNotFound
    bool Gyroscope
    bool Accelerometer
    bool LCD
    bool Qboard3
    bool Qboard1
    bool Qboard2
    bool rightMotor
    bool leftMotor
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestResponse(null);
    if (msg.SRFcount !== undefined) {
      resolved.SRFcount = msg.SRFcount;
    }
    else {
      resolved.SRFcount = 0
    }

    if (msg.SRFAddress !== undefined) {
      resolved.SRFAddress = msg.SRFAddress;
    }
    else {
      resolved.SRFAddress = []
    }

    if (msg.SRFNotFound !== undefined) {
      resolved.SRFNotFound = msg.SRFNotFound;
    }
    else {
      resolved.SRFNotFound = []
    }

    if (msg.Gyroscope !== undefined) {
      resolved.Gyroscope = msg.Gyroscope;
    }
    else {
      resolved.Gyroscope = false
    }

    if (msg.Accelerometer !== undefined) {
      resolved.Accelerometer = msg.Accelerometer;
    }
    else {
      resolved.Accelerometer = false
    }

    if (msg.LCD !== undefined) {
      resolved.LCD = msg.LCD;
    }
    else {
      resolved.LCD = false
    }

    if (msg.Qboard3 !== undefined) {
      resolved.Qboard3 = msg.Qboard3;
    }
    else {
      resolved.Qboard3 = false
    }

    if (msg.Qboard1 !== undefined) {
      resolved.Qboard1 = msg.Qboard1;
    }
    else {
      resolved.Qboard1 = false
    }

    if (msg.Qboard2 !== undefined) {
      resolved.Qboard2 = msg.Qboard2;
    }
    else {
      resolved.Qboard2 = false
    }

    if (msg.rightMotor !== undefined) {
      resolved.rightMotor = msg.rightMotor;
    }
    else {
      resolved.rightMotor = false
    }

    if (msg.leftMotor !== undefined) {
      resolved.leftMotor = msg.leftMotor;
    }
    else {
      resolved.leftMotor = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TestRequest,
  Response: TestResponse,
  md5sum() { return '6f8d7da5192e662dd9f7974027b7e5ee'; },
  datatype() { return 'qbo_arduqbo/Test'; }
};
