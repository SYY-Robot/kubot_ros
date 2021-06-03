# KUBOT_ROS1_Package 

[![Apache-2.0 License](https://img.shields.io/badge/license-Apache2.0-purple)](https://opensource.org/licenses/Apache-2.0)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![Platform Badge](https://img.shields.io/badge/platform-ROS_Melodic-blue.svg)](http://wiki.ros.org/melodic)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![version](https://img.shields.io/badge/version-0.0.1-green)](https://robot.shayangye.com/robots/59)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![robot](https://img.shields.io/badge/robot-KUBOT-orange)](http://www.shayangye.com/)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

# Introduction

> *KUBOT ROS package is developed by Taiwan ShaYangYe Co.Ltd RD400. 
> Thanks to
> [ROS wiki](http://wiki.ros.org/ROS/Tutorials),
> [Neuronbot2](https://www.adlinktech.com/Products/ROS2_Solution/ROS_Opensource_Solution/NeuronBot?Lang=en),
> [Pibot](https://www.jianshu.com/u/7f508db63608),
> [Turtlebot3](https://emanual.robotis.com/docs/en/platform/turtlebot3/overview/),
> and a large number of ROS users.
> This package includes the functions to bring up the KUBOT Robot, 2D SLAM, 3D SLAM, 
> Navigation, drive peripheral equipment and simulate it with your own computer.
> For more instructions, please refer to [KUBOT wiki](https://github.com/KUBOT-Robot/kubot_ros/wiki).*

# Install

1. [Install ROS](http://wiki.ros.org/ROS/Installation)
2. Create KUBOT  ROS1 workspace 

    ```sh
    git clone https://github.com/KUBOT-Robot/kubot_ros.git
    ``` 

3. Full intsall :

    ```sh
    ./kubot_ros/tools/kubot_install_all_pkg.sh
    ./kubot_ros/tools/kubot_install_ros_dep.sh
    ```
> *This will completely install all the underlying drivers, simulations, 2D SLAM, 3D SLAM and value-added equipment of KUBOT Robot. This process requires a github key, please contact the business window.*

4. Select the robot to be used through initialization environment:

    ```sh
    cd ~/kubot_ros/
    ./kubot_init_env.sh
    ```

 - Please specift kubot robot model:
 - Please spacify kubot driver board type:
 - Please specify kubot lidar:
 - Please specify kubot 3d Sensor:
 - Please specify current machine type:

    ```sh
    source ~/.bashrc
    ```
> This script uses bash shell by default. If you use other shells, please modify all `bash` words in the script.

5. catkin_make

    ```sh
    cd ros_ws/
    catkin_make
    source ~/.bashrc
    ```

**Then you can enjoy the various functions of KUBOT Robot:**

Example : 

```sh
roslaunch kubot_description model.launch open_rviz:=true
kubot_bringup
```

# Version History

Supported driver board version:
- [X] V1.Rabbit.1

# License
Released under the [Apache 2.0 license](https://opensource.org/licenses/Apache-2.0).

© 2021 [Hong](https://www.linkedin.com/in/hong-yun-966a9a20b)
