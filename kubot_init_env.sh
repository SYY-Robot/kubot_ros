#!/bin/bash

sudo ln -sf ~/kubot_ros/kubot_init_env.sh /usr/bin/kubot_init_env
sudo ln -sf ~/kubot_ros/tools/kubot_view_env.sh /usr/bin/kubot_view_env
sudo ln -sf ~/kubot_ros/tools/kubot_install_ros.sh /usr/bin/kubot_install_ros

if ! [ $KUBOT_ENV_INITIALIZED ]; then
    echo "# Load KUBOT's environment variables." >> ~/.bashrc
    echo "export KUBOT_ENV_INITIALIZED=1" >> ~/.bashrc
    echo "source ~/.kubotrc" >> ~/.bashrc
    #rules
    echo -e "\033[1;32m setup kubot modules"
    echo " "
    sudo cp rules/71-kubot-driver-board.rules  /etc/udev/rules.d/
    sudo cp rules/72-kubot-lidar.rules  /etc/udev/rules.d/
    sudo cp rules/73-kubot-camera.rules /etc/udev/rules.d/
    echo " "
    echo "Restarting udev"
    echo ""

    sudo udevadm control --reload-rules
    sudo udevadm trigger
fi

code_name=$(lsb_release -sc)
if [ "$code_name" = "bionic" ]; then
    ros_version="melodic"
else
    echo -e "\033[1;31m KUBOT not support "$code_name"\033[0m"
    exit
fi 

content="#source ros
if [ ! -f /opt/ros/${ros_version}/setup.bash ]; then 
    echo \"please run cd ~/kubot_ros && ./kubot_install_ros.sh to install ros sdk\"
else
    source /opt/ros/${ros_version}/setup.bash
fi"
echo "${content}" > ~/.kubotrc

LOCAL_IP=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | awk -F"/" '{print $1}'`
echo "LOCAL_IP=\`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print \$2}' | awk -F"/" '{print \$1}'\`" >> ~/.kubotrc

if [ ! ${LOCAL_IP} ]; then
    echo -e "\033[1;31m Please check network\033[0m"
    exit
fi

echo -e "\033[1;34m Please specify kubot robot model:\033[1;32m
    1 : Kubot2(Cagebot)
    3 : WAGV
    4 : Aider
    5 : Galiray2
    6 : Fullon
\033[1;34m (or other for user defined) \033[1;33m"

read -p "" KUBOT_MODEL_INPUT

if [ "$KUBOT_MODEL_INPUT" = "1" ]; then
    KUBOT_MODEL='kubot2'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "2" ]; then
    KUBOT_MODEL='neuronbot2'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "3" ]; then
    KUBOT_MODEL='wagv'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "4" ]; then
    KUBOT_MODEL='aider'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "5" ]; then
    KUBOT_MODEL='galiray2'
    KUBOT_MODEL_TYPE='omni-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "6" ]; then
    KUBOT_MODEL='fullon'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "s1" ]; then
    KUBOT_MODEL='2wd_diff'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "s2" ]; then
    KUBOT_MODEL='4wd_diff'
    KUBOT_MODEL_TYPE='diff-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "s3" ]; then
    KUBOT_MODEL='3wd_omni'
    KUBOT_MODEL_TYPE='omni-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "s4" ]; then
    KUBOT_MODEL='4wd_omni'
    KUBOT_MODEL_TYPE='omni-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "s5" ]; then
    KUBOT_MODEL='4wd_mecanum'
    KUBOT_MODEL_TYPE='omni-corrected'
elif [ "$KUBOT_MODEL_INPUT" = "s6" ]; then
    KUBOT_MODEL='4wd_arkermann'
    KUBOT_MODEL_TYPE='diff-corrected'
else
    KUBOT_MODEL=$KUBOT_MODEL_INPUT
    KUBOT_MODEL_TYPE='diff-corrected'
fi

echo -e "\033[1;34m Please specify kubot driver board type:\033[1;32m
    1 : arduino(mega2560)
    2 : arduino(due)
    3 : teensy(teensy40)
    4 : teensy(teensy41) 
    5 : stm32(f103) 
    6 : stm32(f407)
    7 : stm32(f429) 
\033[1;34m (or other for user defined)\033[1;33m"

read -p "" KUBOT_DIRVER_BOARD_INPUT

if [ "$KUBOT_DIRVER_BOARD_INPUT" = "1" ]; then
    KUBOT_DRIVER_BAUDRATE=115200
    KUBOT_BOARD='arduino-mega'
elif [ "$KUBOT_DIRVER_BOARD_INPUT" = "2" ]; then
    KUBOT_DRIVER_BAUDRATE=115200
    KUBOT_BOARD='arduino-due'
elif [ "$KUBOT_DIRVER_BOARD_INPUT" = "3" ]; then
    KUBOT_DRIVER_BAUDRATE=500000
    KUBOT_BOARD='teensy-40'
elif [ "$KUBOT_DIRVER_BOARD_INPUT" = "4" ]; then
    KUBOT_DRIVER_BAUDRATE=1000000
    KUBOT_BOARD='teensy-41'                
elif [ "$KUBOT_DIRVER_BOARD_INPUT" = "5" ]; then
    KUBOT_DRIVER_BAUDRATE=115200
    KUBOT_BOARD='stm32f103'
elif [ "$KUBOT_DIRVER_BOARD_INPUT" = "6" ]; then
    KUBOT_DRIVER_BAUDRATE=250000
    KUBOT_BOARD='stm32f407'
elif [ "$KUBOT_DIRVER_BOARD_INPUT" = "7" ]; then
    KUBOT_DRIVER_BAUDRATE=921600
    KUBOT_BOARD='stm32f429'    
else
    KUBOT_DRIVER_BAUDRATE=115200
    KUBOT_BOARD=$KUBOT_DIRVER_BOARD_INPUT
fi

echo -e "\033[1;34m Please specify  kubot lidar:\033[1;32m
    0 : not config
    1 : rplidar(a1)
    2 : rplidar(a2)
    3 : rplidar(a3)
    4 : rplidar(s1) 
    5 : xtion
    6 : kinect(V2)
    7 : astra
    8 : realsense(d435i)
    9 : sick(tim551)
    10 : hokuyo(ust-10lx)
    11 : two_rplidar(a2)
\033[1;34m (or other for user defined)\033[1;33m"

read -p "" KUBOT_LIDAR_INPUT
KUBOT_DEEP_CAM=0

if [ "$KUBOT_LIDAR_INPUT" = "0" ]; then
    KUBOT_LIDAR='non-lidar'
elif [ "$KUBOT_LIDAR_INPUT" = "1" ]; then
    KUBOT_LIDAR='rplidar-a1'
elif [ "$KUBOT_LIDAR_INPUT" = "2" ]; then
    KUBOT_LIDAR='rplidar-a2'
elif [ "$KUBOT_LIDAR_INPUT" = "3" ]; then
    KUBOT_LIDAR='rplidar-a3'
elif [ "$KUBOT_LIDAR_INPUT" = "4" ]; then
    KUBOT_LIDAR='rplidar-s1'
elif [ "$KUBOT_LIDAR_INPUT" = "5" ]; then
    KUBOT_LIDAR='xtion'
    KUBOT_DEEP_CAM=1
elif [ "$KUBOT_LIDAR_INPUT" = "6" ]; then
    KUBOT_LIDAR='kinectV2'
    KUBOT_DEEP_CAM=1
elif [ "$KUBOT_LIDAR_INPUT" = "7" ]; then
    KUBOT_LIDAR='astra'
    KUBOT_DEEP_CAM=1
elif [ "$KUBOT_LIDAR_INPUT" = "8" ]; then
    KUBOT_LIDAR='d435i'
    KUBOT_DEEP_CAM=1
elif [ "$KUBOT_LIDAR_INPUT" = "9" ]; then
    KUBOT_LIDAR='sick-tim551'
elif [ "$KUBOT_LIDAR_INPUT" = "10" ]; then
    KUBOT_LIDAR='hokuyo-10ls'
elif [ "$KUBOT_LIDAR_INPUT" = "11" ]; then
    KUBOT_LIDAR='two-rplidar-a2'
else
    KUBOT_LIDAR=$KUBOT_LIDAR_INPUT
fi

#if [ "$KUBOT_LIDAR" = "kinectV2" ]; then
#    ln -s $PWD/third_party/iai_kinect2 $PWD/ros_ws/src/
# else
#    if [ -f $PWD/ros_ws/src/iai_kinect2 ]; then
#        rm $PWD/ros_ws/src/iai_kinect2
#    fi
#fi

if [ $KUBOT_DEEP_CAM = 1 ]; then
    echo "deep_cam: $KUBOT_LIDAR"
    KUBOT_3DSENSOR='non-3dsensor'
else

echo -e "\033[1;34m Please specify  kubot 3d sensor:\033[1;32m
    0 : not config
    1 : xtion
    2 : astra
    3 : kinectV2
    4 : intel realsense(d435i)
    5 : logitech(c615)
\033[1;34m (or other for user defined) \033[1;33m"

    read -p "" KUBOT_INPUT

    if [ "$KUBOT_INPUT" = "0" ]; then
        KUBOT_3DSENSOR='non-3dsensor'
    elif [ "$KUBOT_INPUT" = "1" ]; then
        KUBOT_3DSENSOR='xtion'
    elif [ "$KUBOT_INPUT" = "2" ]; then
        KUBOT_3DSENSOR='astra'
    elif [ "$KUBOT_INPUT" = "3" ]; then
        KUBOT_3DSENSOR='kinectV2'
    elif [ "$KUBOT_INPUT" = "4" ]; then
        KUBOT_3DSENSOR='d435i'
    elif [ "$KUBOT_INPUT" = "5" ]; then
        KUBOT_3DSENSOR='logi-c615' 
    else
        KUBOT_3DSENSOR=$KUBOT_INPUT
    fi
fi

echo "export ROS_IP=\`echo \$LOCAL_IP\`" >> ~/.kubotrc
echo "export ROS_HOSTNAME=\`echo \$LOCAL_IP\`" >> ~/.kubotrc
echo "export KUBOT_MODEL=${KUBOT_MODEL}" >> ~/.kubotrc
echo "export KUBOT_MODEL_TYPE=${KUBOT_MODEL_TYPE}">> ~/.kubotrc
echo "export KUBOT_LIDAR=${KUBOT_LIDAR}" >> ~/.kubotrc
echo "export KUBOT_3DSENSOR=${KUBOT_3DSENSOR}" >> ~/.kubotrc
echo "export KUBOT_BOARD=${KUBOT_BOARD}" >> ~/.kubotrc
echo "export KUBOT_DRIVER_BAUDRATE=${KUBOT_DRIVER_BAUDRATE}" >> ~/.kubotrc
echo "export KUBOT_ASTRA_PID=0x\`lsusb | grep "2bc5:05" | awk '{print \$6}' | awk -F":" '{print \$2}'\`" >> ~/.kubotrc

echo -e "\033[1;34m Please specify the current machine(ip:$LOCAL_IP) type\033[1;32m
    0 : Master 
    1 : Slaver
\033[1;33m" 

read -p "" KUBOT_MACHINE_VALUE
if [ "$KUBOT_MACHINE_VALUE" = "0" ]; then
    ROS_MASTER_IP_STR="\`echo \$LOCAL_IP\`"
    ROS_MASTER_IP=`echo $LOCAL_IP`
else
    echo -e "\033[1;34m Plase specify the robot_ip for commnication:\033[1;33m" 
    read -p "" KUBOT_ONBOARD_MACHINE_IP
    ROS_MASTER_IP_STR=`echo $KUBOT_ONBOARD_MACHINE_IP`
    ROS_MASTER_IP=`echo $KUBOT_ONBOARD_MACHINE_IP`
fi

echo "export ROS_MASTER_URI=`echo http://${ROS_MASTER_IP_STR}:11311`" >> ~/.kubotrc

echo -e "\033[1;35m*****************************************************************"
echo " model:" $KUBOT_MODEL
echo " driver board:" $KUBOT_BOARD 
echo " lidar:" $KUBOT_LIDAR  
echo " 3d sensor:" $KUBOT_3DSENSOR
echo " local_ip:" ${LOCAL_IP} 
echo " robot_ip:" ${ROS_MASTER_IP}
echo ""
echo -e "\033[1;34m Please execute\033[1;36m source ~/.bashrc\033[1;34m to make the configure effective\033[1;34m"
echo -e "\033[1;35m*****************************************************************\033[0m"

#echo "source ~/kubot_ros/ros_ws/devel/setup.bash" >> ~/.kubotrc 
content="#source kubot

if [ ! -f ~/kubot_ros/ros_ws/devel/setup.bash ]; then 
    echo \"please run cd ~/kubot_ros/ros_ws && catkin_make to compile kubot sdk\"
else
    source ~/kubot_ros/ros_ws/devel/setup.bash
fi
"
echo "${content}" >> ~/.kubotrc

#alias
echo "alias kubot_bringup='roslaunch kubot_bringup bringup.launch'" >> ~/.kubotrc 
echo "alias kubot_keyboard='roslaunch kubot_control keyboard_teleop.launch'" >> ~/.kubotrc
echo "alias kubot_robot='roslaunch kubot_bringup robot.launch'" >> ~/.kubotrc 

echo "alias kubot_rqt='rosrun rqt_reconfigure rqt_reconfigure' ">>~/.kubotrc
echo "alias kubot_motor_run='rostopic pub cmd_vel linear x:0.2 y:0.0 z:0.0 angular x:0.0 y:0.0 z:0.0 -r 20'" >> ~/.kubotrc
echo "alias kubot_motor_show='rosrun rqt_plot rqt_plot /motor1_input /motor1_output /motor2_input /motor2_output'" >> ~/.kubotrc
echo "alias kubot_linear='rosrun kubot_control calibrate_linear.py'" >> ~/.kubotrc
echo "alias kubot_angular='rosrun kubot_control calibrate_angular.py'" >> ~/.kubotrc

echo "alias kubot_gmp='roslaunch kubot_slam_2d gmapping.launch'" >> ~/.kubotrc 
echo "alias kubot_save_map='roslaunch kubot_navigation save_map.launch'" >> ~/.kubotrc 
echo "alias kubot_view='roslaunch kubot_navigation view_nav.launch'" >> ~/.kubotrc 