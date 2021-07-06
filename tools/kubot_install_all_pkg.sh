#!/bin/bash

code_name=$(lsb_release -sc)

if [ "$code_name" = "xenial" ]; then
    ros_version="kinetic"
else
    echo "KUBOT not support "$code_name
    exit
fi

git config --global credential.helper cache

echo "ros:" $ros_version

if [ "$ros_version" = "kinetic" ]; then
cd 
cd ~/kubot_ros/ros_ws/src/
	git clone https://github.com/KUBOT-Robot/kubot_base_driver.git -b kinetic-devel
	git clone https://github.com/KUBOT-Robot/kubot_simulation.git -b kinetic-devel
	git clone https://github.com/KUBOT-Robot/kubot_slam_pkg.git -b kinetic-devel



else
    exit
fi

# KUBOT2
