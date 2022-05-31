#!/bin/bash
apt update 
apt install curl unzip git -y
curl -L 'rclone.org/install.sh' |bash
curl -L "$RCLONE_CONF_IN_URL" >/rclone.conf
rclone rcd --rc-serve --rc-addr=0.0.0.0:8080 --config=/rclone.conf
rclone rcd --rc-serve --rc-addr=0.0.0.0:8080 --config=/demo.conf
