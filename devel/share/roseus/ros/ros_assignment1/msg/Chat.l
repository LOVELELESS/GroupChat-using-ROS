;; Auto-generated. Do not edit!


(when (boundp 'ros_assignment1::Chat)
  (if (not (find-package "ROS_ASSIGNMENT1"))
    (make-package "ROS_ASSIGNMENT1"))
  (shadow 'Chat (find-package "ROS_ASSIGNMENT1")))
(unless (find-package "ROS_ASSIGNMENT1::CHAT")
  (make-package "ROS_ASSIGNMENT1::CHAT"))

(in-package "ROS")
;;//! \htmlinclude Chat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_assignment1::Chat
  :super ros::object
  :slots (_header _source_id _message ))

(defmethod ros_assignment1::Chat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source_id __source_id) (instance std_msgs::String :init))
    ((:message __message) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _source_id __source_id)
   (setq _message __message)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source_id
   (&rest __source_id)
   (if (keywordp (car __source_id))
       (send* _source_id __source_id)
     (progn
       (if __source_id (setq _source_id (car __source_id)))
       _source_id)))
  (:message
   (&rest __message)
   (if (keywordp (car __message))
       (send* _message __message)
     (progn
       (if __message (setq _message (car __message)))
       _message)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _source_id
    (send _source_id :serialization-length)
    ;; std_msgs/String _message
    (send _message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _source_id
       (send _source_id :serialize s)
     ;; std_msgs/String _message
       (send _message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _source_id
     (send _source_id :deserialize buf ptr-) (incf ptr- (send _source_id :serialization-length))
   ;; std_msgs/String _message
     (send _message :deserialize buf ptr-) (incf ptr- (send _message :serialization-length))
   ;;
   self)
  )

(setf (get ros_assignment1::Chat :md5sum-) "cb9c0557da8924b74f97e19e306c3bd5")
(setf (get ros_assignment1::Chat :datatype-) "ros_assignment1/Chat")
(setf (get ros_assignment1::Chat :definition-)
      "std_msgs/Header header
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

")



(provide :ros_assignment1/Chat "cb9c0557da8924b74f97e19e306c3bd5")


