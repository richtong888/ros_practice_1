// Auto-generated. Do not edit!

// (in-package tutorial.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class my_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ml1 = null;
      this.ml2 = null;
    }
    else {
      if (initObj.hasOwnProperty('ml1')) {
        this.ml1 = initObj.ml1
      }
      else {
        this.ml1 = 0;
      }
      if (initObj.hasOwnProperty('ml2')) {
        this.ml2 = initObj.ml2
      }
      else {
        this.ml2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_srvRequest
    // Serialize message field [ml1]
    bufferOffset = _serializer.int64(obj.ml1, buffer, bufferOffset);
    // Serialize message field [ml2]
    bufferOffset = _serializer.int64(obj.ml2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_srvRequest
    let len;
    let data = new my_srvRequest(null);
    // Deserialize message field [ml1]
    data.ml1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ml2]
    data.ml2 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tutorial/my_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cff21c491323d0c3cd3cf4f2ccc5be3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ml1
    int64 ml2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_srvRequest(null);
    if (msg.ml1 !== undefined) {
      resolved.ml1 = msg.ml1;
    }
    else {
      resolved.ml1 = 0
    }

    if (msg.ml2 !== undefined) {
      resolved.ml2 = msg.ml2;
    }
    else {
      resolved.ml2 = 0
    }

    return resolved;
    }
};

class my_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum = null;
    }
    else {
      if (initObj.hasOwnProperty('sum')) {
        this.sum = initObj.sum
      }
      else {
        this.sum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_srvResponse
    // Serialize message field [sum]
    bufferOffset = _serializer.int64(obj.sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_srvResponse
    let len;
    let data = new my_srvResponse(null);
    // Deserialize message field [sum]
    data.sum = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tutorial/my_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b88405221c77b1878a3cbbfff53428d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sum
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_srvResponse(null);
    if (msg.sum !== undefined) {
      resolved.sum = msg.sum;
    }
    else {
      resolved.sum = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: my_srvRequest,
  Response: my_srvResponse,
  md5sum() { return 'cd6995d1f27dd1f271e3dace09a45f6f'; },
  datatype() { return 'tutorial/my_srv'; }
};
