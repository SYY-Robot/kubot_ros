#!/bin/bash

code_name=$(lsb_release -sc)

if [ "$code_name" = "focal" ]; then
    ros_version="noetic"
else
    echo "KUBOT not support "$code_name
    exit
fi

git config --global credential.helper cache

echo "ros:" $ros_version

if [ "$ros_version" = "noetic" ]; then
cd 
cd ~/kubot_ros/ros_ws/src/
	git clone https://github.com/KUBOT-Robot/kubot_base_driver.git -b noetic-devel
	git clone https://github.com/KUBOT-Robot/kubot_simulation.git -b noetic-devel
	git clone https://github.com/KUBOT-Robot/kubot_slam_pkg.git -b noetic-devel

else
    exit
fi

# KUBOT
