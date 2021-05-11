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
	git clone https://github.com/kubot080301/kubot_base_driver.git
	git clone https://github.com/kubot080301/kubot_simulation.git
	git clone https://github.com/kubot080301/kubot_slam_pkg.git
cd ~/kubot_ros/ros_ws/src/kubot_slam_pkg/third_party_pkg/
    	git clone https://github.com/ros-perception/openslam_gmapping.git
    	git clone https://github.com/ros-perception/slam_gmapping.git

	sudo apt-get install ros-melodic-joint-state-publisher-gui

else
    exit
fi

# KUBOT2
