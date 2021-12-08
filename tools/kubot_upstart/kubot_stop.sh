#!/bin/bash

log_file=/tmp/kubot-upstart.log
echo "$DATE: kubot-stop" >> $log_file
kubotenv=/etc/kubotenv
. $kubotenv

code_name=$(lsb_release -sc)
if [ "$code_name" = "bionic" ]; then
    ros_version="melodic"
else
    echo -e "\033[1;31m KUBOT not support "$code_name"\033[0m"
    exit
fi 

LOCAL_IP=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | awk -F"/" '{print $1}'`
echo $LOCAL_IP
echo "SYS_DIST:                $code_name" >> $log_file
echo "ROS_DIST:                $ros_version" >> $log_file
echo "LOCAL_IP:                $LOCAL_IP" >> $log_file
echo "ROS_MASTER_URI:          $ROS_MASTER_URI" >> $log_file
echo "ROS_IP:                  $ROS_IP" >> $log_file
echo "HOSTNAME:                $ROS_HOSTNAME" >> $log_file
echo "KUBOT_MODEL:             $KUBOT_MODEL" >> $log_file
echo "KUBOT_MODEL_TYPE:        $KUBOT_MODEL_TYPE" >> $log_file
echo "KUBOT_LIDAR:             $KUBOT_LIDAR" >> $log_file
echo "KUBOT_3DSENSOR:	       $KUBOT_3DSENSOR" >> $log_file
echo "KUBOT_BOARD:             $KUBOT_BOARD" >> $log_file
echo "KUBOT_DRIVER_BAUDRATE:   $KUBOT_DRIVER_BAUDRATE" >> $log_file

for i in $( rosnode list ); do
    rosnode kill $i;
done

killall roslaunch