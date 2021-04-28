# KUBOT_ROS1_Package 

[![Apache-2.0 License](https://img.shields.io/badge/license-Apache2.0-purple)](http://www.shayangye.com/)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![Platform Badge](https://img.shields.io/badge/platform-ROS_Melodic-blue.svg)](http://www.shayangye.com/)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![version](https://img.shields.io/badge/version-0.0.1-green)](http://www.shayangye.com/)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![robot](https://img.shields.io/badge/robot-KUBOT-orange)](http://www.shayangye.com/)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

## Introduction
> ***KUBOT ROS package is developed by Taiwan ShaYangYe Co.Ltd RD400. 
> Thanks to ROS wiki, 
> [Neuronbot2](https://github.com/Adlink-ROS/neuronbot2),  
> [Pibot](https://www.jianshu.com/u/7f508db63608), 
> [Turtlebot](https://github.com/turtlebot), 
> and a large number of ROS users.
> This package includes the functions to bring up the KUBOT Robot, 2D SLAM, 3D SLAM, 
> Navigation, drive peripheral equipment and simulate it with your own computer.
> For more instructions, please see [KUBOT Wiki](https://github.com/KUBOT-Robot/kubot_ros/wiki).***


## Installation 

1. [Install ROS](http://wiki.ros.org/ROS/Installation)
2. Create KUBOT  ROS1 workspace 

```sh
git clone https://github.com/KUBOT-Robot/kubot_ros.git
``` 

 - 2.1 Full intsall :
> ***這將完整安裝KUBOT 所有ROBOT的底層驅動、仿真模擬、2D SLAM、3D SLAM、加值裝置等***
> ***此過程需要github金鑰請與專人聯絡***

```sh
./kubot_ros/tools/kubot_install_kubot_all_pkg.sh
./kubot_ros/tools/kubot_install_ros_dep.sh
```


## Initialization environment

```sh
cd ~/kubot_ros/
./kubot_init_env.sh
```

 - 選擇 KUBOT機器人型號
 - 選擇 控制器型號
 - 選擇 激光雷達型號
 - 選擇 深度鏡頭型號
 - 選擇 ROS Master or Slave

```sh
source ~/.bashrc
```

This script uses bash shell by default. If you use other shells, please modify all  [bash]() words in the script.

```sh
cd ~/ros_ws/
catkin_make
source ~/.bashrc
```
接著就可以享受您的機器人 : 
```sh
example : 
roslaunch kubot_navigation nav.launch
kubot_bringup
```

## Repository Contents

## Version History

Suport ROBOT Model : 

Kubot2 (CAGEBOT) # link

Neuronbot2 # link

Wagv # link

Aider # link

Galiray2 # link

## License
