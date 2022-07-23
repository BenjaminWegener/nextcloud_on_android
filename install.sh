#!/bin/bash
pkg install -y wget unzip sqlite php php-{cli,xml,zip,curl,gd,cgi,mbstring,xmlrpc,recode,tidy,imagick,sqlite3} libterm-readline-gnu-perl lighttpd 
lighttpd-enable-mod fastcgi 
lighttpd-enable-mod fastcgi-php
cd /var/www/html/
wget --no-check-certificate https://download.nextcloud.com/server/releases/latest-23.zip
unzip latest-23.zip
chown -R www-data:www-data /var/www/
chmod -R 755 /var/www/
sed -i 's/80/8080/g' /etc/lighttpd/lighttpd.conf
sed -i 's/localhost:8080/*/g' /var/www/html/nextcloud/config/config.sample.php
service lighttpd restart
#echo '#!/bin/bash' >> /etc/init.d/nextcloud.sh
#echo 'sudo service lighttpd start' >> /etc/init.d/nextcloud.sh
#sudo chmod +x /etc/init.d/nextcloud.sh
update-rc.d lighttpd defaults
