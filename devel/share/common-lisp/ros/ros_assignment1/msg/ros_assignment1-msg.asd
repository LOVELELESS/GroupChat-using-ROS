
(cl:in-package :asdf)

(defsystem "ros_assignment1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Chat" :depends-on ("_package_Chat"))
    (:file "_package_Chat" :depends-on ("_package"))
  ))