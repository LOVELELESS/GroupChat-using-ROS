; Auto-generated. Do not edit!


(cl:in-package ros_assignment1-msg)


;//! \htmlinclude Chat.msg.html

(cl:defclass <Chat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (source_id
    :reader source_id
    :initarg :source_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (message
    :reader message
    :initarg :message
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Chat (<Chat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Chat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Chat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignment1-msg:<Chat> is deprecated: use ros_assignment1-msg:Chat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Chat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignment1-msg:header-val is deprecated.  Use ros_assignment1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source_id-val :lambda-list '(m))
(cl:defmethod source_id-val ((m <Chat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignment1-msg:source_id-val is deprecated.  Use ros_assignment1-msg:source_id instead.")
  (source_id m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Chat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignment1-msg:message-val is deprecated.  Use ros_assignment1-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Chat>) ostream)
  "Serializes a message object of type '<Chat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Chat>) istream)
  "Deserializes a message object of type '<Chat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Chat>)))
  "Returns string type for a message object of type '<Chat>"
  "ros_assignment1/Chat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Chat)))
  "Returns string type for a message object of type 'Chat"
  "ros_assignment1/Chat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Chat>)))
  "Returns md5sum for a message object of type '<Chat>"
  "cb9c0557da8924b74f97e19e306c3bd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Chat)))
  "Returns md5sum for a message object of type 'Chat"
  "cb9c0557da8924b74f97e19e306c3bd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Chat>)))
  "Returns full string definition for message of type '<Chat>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/String source_id~%std_msgs/String message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Chat)))
  "Returns full string definition for message of type 'Chat"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/String source_id~%std_msgs/String message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Chat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Chat>))
  "Converts a ROS message object to a list"
  (cl:list 'Chat
    (cl:cons ':header (header msg))
    (cl:cons ':source_id (source_id msg))
    (cl:cons ':message (message msg))
))
