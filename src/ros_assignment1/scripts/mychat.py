#!/usr/bin/env python
import rospy
from std_msgs import msg
from ros_assignment1.msg import Chat
from datetime import datetime

log = []
def push_data(lst,data):
    if data in lst:
        return False 
    else:
        if len(lst) == 10:
            lst.pop(0)
        lst.append(data)
        return True

def print_log(lst):
    for index,data in enumerate(lst):
        if index == 0:
            print('\nCHAT\n-----------------------------------------------')
        date_str = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        source = data.source_id.data
        content = data.message.data
        print( date_str + ' ' + source  + ': ' + content)
        if index == len(lst) - 1:
            print('-----------------------------------------------')


def callback(data):
    if push_data(log,data):
        print_log(log)
        print("Type new message below: ")  

def chat():
    pub = rospy.Publisher('chatter',Chat,queue_size=10)
    rospy.Subscriber('chatter',Chat,callback)
    name = raw_input('What is your username? ')
    rospy.init_node(name)
    rate = rospy.Rate(10)
    
    while not rospy.is_shutdown():
        hello_str = raw_input('Type new message below: \n')
        header = msg.Header()
        header.stamp = rospy.Time.now() 
        source_id = msg.String(rospy.get_name())
        message = msg.String(hello_str)
        c = Chat(header,source_id,message)

        push_data(log,c)
        pub.publish(c)
        print_log(log)
        rate.sleep()

if __name__ == '__main__':
    try:
        chat()
    except rospy.ROSInterruptException:
        pass
