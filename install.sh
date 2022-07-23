#!/bin/bash
pkg install -y unzip sqlite php
wget --no-check-certificate https://download.nextcloud.com/server/releases/latest-24.zip
unzip latest-24.zip
sed -i 's/localhost:8080/*/g' ./nextcloud/config/config.sample.php
