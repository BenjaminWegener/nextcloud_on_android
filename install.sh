#!/bin/bash
sudo apt install -y wget unzip sqlite php php-{cli,xml,zip,curl,gd,cgi,mysql,mbstring} lighttpd
cd /var/www/html/
wget --no-check-certificate https://download.nextcloud.com/server/releases/latest-23.zip
unzip latest-23.zip
sudo chown -R www-data:www-data /var/www/
sudo chmod -R 755 /var/www/
sudo sed -i 's/80/8080/g' /etc/lighttpd/lighttpd.conf
sudo service lighttpd restart
