Steps to run the Chat program:

1st Terminal: run roscore
subsequent Terminals (where num of Terminals = num of users): 
1. go to ~/Documents/bumble-bee-1/ (project home directory)
2. run catkin_make
3. run source devel/setup.bash
4. run chmod +x src/ros_assignment1/msg/*.msg
5. run chmod +x src/ros_assignment1/scripts/*.py
6. run rosrun ros_assignment1 mychat.py

1st Prompt: username
Subsequent Prompts: message

I stored all the data in a list called log.
Then I used a func to check if the list length is == 10. 
If it is, I remove the earliest entry and append the latest entry.
