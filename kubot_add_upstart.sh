#!/bin/bash

sudo ln -sf ~/kubot_ros/tools/kubot_upstart/kubotenv /etc/kubotenv
sudo ln -sf ~/kubot_ros/tools/kubot_upstart/kubot_start.sh /usr/bin/kubot_start
sudo ln -sf ~/kubot_ros/tools/kubot_upstart/kubot_stop.sh /usr/bin/kubot_stop
sudo ln -sf ~/kubot_ros/tools/kubot_upstart/kubot_restart.sh /usr/bin/kubot_restart
sudo cp ~/kubot_ros/tools/kubot_upstart/kubot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable kubot
sudo systemctl is-enabled kubot

# KUBOT_ADD_UPSTART_SH_