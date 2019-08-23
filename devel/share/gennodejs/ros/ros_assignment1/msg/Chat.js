// Auto-generated. Do not edit!

// (in-package ros_assignment1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Chat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source_id = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('source_id')) {
        this.source_id = initObj.source_id
      }
      else {
        this.source_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Chat
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [source_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.source_id, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = std_msgs.msg.String.serialize(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Chat
    let len;
    let data = new Chat(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_id]
    data.source_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.source_id);
    length += std_msgs.msg.String.getMessageSize(object.message);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_assignment1/Chat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb9c0557da8924b74f97e19e306c3bd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/String source_id
    std_msgs/String message
    
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
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Chat(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.source_id !== undefined) {
      resolved.source_id = std_msgs.msg.String.Resolve(msg.source_id)
    }
    else {
      resolved.source_id = new std_msgs.msg.String()
    }

    if (msg.message !== undefined) {
      resolved.message = std_msgs.msg.String.Resolve(msg.message)
    }
    else {
      resolved.message = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = Chat;
