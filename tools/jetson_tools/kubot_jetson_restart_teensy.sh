#! /bin/bash
# Yhis will creat c funtion to resey usb device.

cd 
cd kubot_ros/tools/jetson_tools/

tput setaf 2
echo "Cmake usb reset ..."
tput sgr0

cc kubot_usb_reset.c -o kubot_usb_reset

tput setaf 2
echo "Do usb reset ..."
tput sgr0


sudo chmod +x kubot_usb_reset
sudo ./kubot_usb_reset /dev/bus/usb/001/010

tput setaf 2
echo "Finish reset!"
tput sgr0
