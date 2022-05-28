#!/bin/bash
apt update 
apt install curl unzip git -y
curl -L 'rclone.org/install.sh' |bash
curl -L "$RCLONE_CONF_IN_URL" >/rclone.conf
rclone serve http 8080
