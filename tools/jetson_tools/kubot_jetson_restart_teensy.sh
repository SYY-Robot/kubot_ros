#! /bin/bash

cd 
cd kubot_ros/tools/jetson_tools/
cc kubot_usb_reset.c -o kubot_usb_reset
sudo chmod +x kubot_usb_reset
sudo ./kubot_usb_reset /dev/bus/usb/001/010