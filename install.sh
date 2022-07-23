#!/bin/bash
sudo apt install -y wget unzip sqlite php php-{cli,xml,zip,curl,gd,cgi,mbstring,xmlrpc,recode,tidy,imagick,sqlite3} libterm-readline-gnu-perl lighttpd 
sudo lighttpd-enable-mod fastcgi 
sudo lighttpd-enable-mod fastcgi-php
cd /var/www/html/
wget --no-check-certificate https://download.nextcloud.com/server/releases/latest-23.zip
unzip latest-23.zip
sudo chown -R www-data:www-data /var/www/
sudo chmod -R 755 /var/www/
sudo sed -i 's/80/8080/g' /etc/lighttpd/lighttpd.conf
sudo sed -i 's/localhost:8080/*/g' /var/www/html/nextcloud/config/config.php
sudo service lighttpd stop
sudo service lighttpd start

