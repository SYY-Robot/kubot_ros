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

class RawLed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.set_ledNum = null;
      this.set_led_brightness = null;
      this.set_led_speed = null;
      this.set_led_color = null;
      this.set_led_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('set_ledNum')) {
        this.set_ledNum = initObj.set_ledNum
      }
      else {
        this.set_ledNum = 0;
      }
      if (initObj.hasOwnProperty('set_led_brightness')) {
        this.set_led_brightness = initObj.set_led_brightness
      }
      else {
        this.set_led_brightness = 0;
      }
      if (initObj.hasOwnProperty('set_led_speed')) {
        this.set_led_speed = initObj.set_led_speed
      }
      else {
        this.set_led_speed = 0;
      }
      if (initObj.hasOwnProperty('set_led_color')) {
        this.set_led_color = initObj.set_led_color
      }
      else {
        this.set_led_color = 0;
      }
      if (initObj.hasOwnProperty('set_led_mode')) {
        this.set_led_mode = initObj.set_led_mode
      }
      else {
        this.set_led_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawLed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [set_ledNum]
    bufferOffset = _serializer.int8(obj.set_ledNum, buffer, bufferOffset);
    // Serialize message field [set_led_brightness]
    bufferOffset = _serializer.int8(obj.set_led_brightness, buffer, bufferOffset);
    // Serialize message field [set_led_speed]
    bufferOffset = _serializer.int8(obj.set_led_speed, buffer, bufferOffset);
    // Serialize message field [set_led_color]
    bufferOffset = _serializer.int8(obj.set_led_color, buffer, bufferOffset);
    // Serialize message field [set_led_mode]
    bufferOffset = _serializer.int8(obj.set_led_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawLed
    let len;
    let data = new RawLed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [set_ledNum]
    data.set_ledNum = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [set_led_brightness]
    data.set_led_brightness = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [set_led_speed]
    data.set_led_speed = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [set_led_color]
    data.set_led_color = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [set_led_mode]
    data.set_led_mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kubot_msgs/RawLed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea5dba668be3a2d8b0e755084e1b5670';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int8 set_ledNum
    int8 set_led_brightness
    int8 set_led_speed
    int8 set_led_color
    int8 set_led_mode
    
    
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
    const resolved = new RawLed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.set_ledNum !== undefined) {
      resolved.set_ledNum = msg.set_ledNum;
    }
    else {
      resolved.set_ledNum = 0
    }

    if (msg.set_led_brightness !== undefined) {
      resolved.set_led_brightness = msg.set_led_brightness;
    }
    else {
      resolved.set_led_brightness = 0
    }

    if (msg.set_led_speed !== undefined) {
      resolved.set_led_speed = msg.set_led_speed;
    }
    else {
      resolved.set_led_speed = 0
    }

    if (msg.set_led_color !== undefined) {
      resolved.set_led_color = msg.set_led_color;
    }
    else {
      resolved.set_led_color = 0
    }

    if (msg.set_led_mode !== undefined) {
      resolved.set_led_mode = msg.set_led_mode;
    }
    else {
      resolved.set_led_mode = 0
    }

    return resolved;
    }
};

module.exports = RawLed;
