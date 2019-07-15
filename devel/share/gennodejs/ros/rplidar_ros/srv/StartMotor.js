// Auto-generated. Do not edit!

// (in-package rplidar_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartMotorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pwm = null;
    }
    else {
      if (initObj.hasOwnProperty('pwm')) {
        this.pwm = initObj.pwm
      }
      else {
        this.pwm = new std_msgs.msg.UInt16();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartMotorRequest
    // Serialize message field [pwm]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartMotorRequest
    let len;
    let data = new StartMotorRequest(null);
    // Deserialize message field [pwm]
    data.pwm = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rplidar_ros/StartMotorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd160db0cb9e838a10809e84d876d07a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/UInt16 pwm
    
    ================================================================================
    MSG: std_msgs/UInt16
    uint16 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartMotorRequest(null);
    if (msg.pwm !== undefined) {
      resolved.pwm = std_msgs.msg.UInt16.Resolve(msg.pwm)
    }
    else {
      resolved.pwm = new std_msgs.msg.UInt16()
    }

    return resolved;
    }
};

class StartMotorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartMotorResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartMotorResponse
    let len;
    let data = new StartMotorResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rplidar_ros/StartMotorResponse';
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
    const resolved = new StartMotorResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: StartMotorRequest,
  Response: StartMotorResponse,
  md5sum() { return 'bd160db0cb9e838a10809e84d876d07a'; },
  datatype() { return 'rplidar_ros/StartMotor'; }
};
