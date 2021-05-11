// Auto-generated. Do not edit!

// (in-package kubot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RawRobot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bumper_status = null;
      this.sona1_dis = null;
      this.sona2_dis = null;
      this.sona3_dis = null;
      this.sona4_dis = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bumper_status')) {
        this.bumper_status = initObj.bumper_status
      }
      else {
        this.bumper_status = false;
      }
      if (initObj.hasOwnProperty('sona1_dis')) {
        this.sona1_dis = initObj.sona1_dis
      }
      else {
        this.sona1_dis = 0;
      }
      if (initObj.hasOwnProperty('sona2_dis')) {
        this.sona2_dis = initObj.sona2_dis
      }
      else {
        this.sona2_dis = 0;
      }
      if (initObj.hasOwnProperty('sona3_dis')) {
        this.sona3_dis = initObj.sona3_dis
      }
      else {
        this.sona3_dis = 0;
      }
      if (initObj.hasOwnProperty('sona4_dis')) {
        this.sona4_dis = initObj.sona4_dis
      }
      else {
        this.sona4_dis = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawRobot
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bumper_status]
    bufferOffset = _serializer.bool(obj.bumper_status, buffer, bufferOffset);
    // Serialize message field [sona1_dis]
    bufferOffset = _serializer.uint8(obj.sona1_dis, buffer, bufferOffset);
    // Serialize message field [sona2_dis]
    bufferOffset = _serializer.uint8(obj.sona2_dis, buffer, bufferOffset);
    // Serialize message field [sona3_dis]
    bufferOffset = _serializer.uint8(obj.sona3_dis, buffer, bufferOffset);
    // Serialize message field [sona4_dis]
    bufferOffset = _serializer.uint8(obj.sona4_dis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawRobot
    let len;
    let data = new RawRobot(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bumper_status]
    data.bumper_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sona1_dis]
    data.sona1_dis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sona2_dis]
    data.sona2_dis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sona3_dis]
    data.sona3_dis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sona4_dis]
    data.sona4_dis = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kubot_msgs/RawRobot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '509b6781cd16934dc0eb2392de02e97a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool bumper_status
    uint8 sona1_dis
    uint8 sona2_dis
    uint8 sona3_dis
    uint8 sona4_dis
    
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
    const resolved = new RawRobot(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bumper_status !== undefined) {
      resolved.bumper_status = msg.bumper_status;
    }
    else {
      resolved.bumper_status = false
    }

    if (msg.sona1_dis !== undefined) {
      resolved.sona1_dis = msg.sona1_dis;
    }
    else {
      resolved.sona1_dis = 0
    }

    if (msg.sona2_dis !== undefined) {
      resolved.sona2_dis = msg.sona2_dis;
    }
    else {
      resolved.sona2_dis = 0
    }

    if (msg.sona3_dis !== undefined) {
      resolved.sona3_dis = msg.sona3_dis;
    }
    else {
      resolved.sona3_dis = 0
    }

    if (msg.sona4_dis !== undefined) {
      resolved.sona4_dis = msg.sona4_dis;
    }
    else {
      resolved.sona4_dis = 0
    }

    return resolved;
    }
};

module.exports = RawRobot;
