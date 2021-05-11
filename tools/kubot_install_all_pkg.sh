#!/bin/bash

code_name=$(lsb_release -sc)

if [ "$code_name" = "bionic" ]; then
    ros_version="melodic"
else
    echo "KUBOT not support "$code_name
    exit
fi

git config --global credential.helper cache

echo "ros:" $ros_version

if [ "$ros_version" = "melodic" ]; then
cd 
cd ~/kubot_ros/ros_ws/src/
	git clone https://github.com/KUBOT-Robot/kubot_base_driver.git
	git clone https://github.com/KUBOT-Robot/kubot_simulation.git
	git clone https://github.com/KUBOT-Robot/kubot_slam_pkg.git



else
    exit
fi

# KUBOT2
