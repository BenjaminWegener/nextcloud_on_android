#!/bin/bash
pkg install -y unzip sqlite php
wget --no-check-certificate https://download.nextcloud.com/server/releases/latest-24.zip
unzip latest-24.zip
sed -i 's/localhost:8080/*/g' ./nextcloud/config/config.sample.php
#php -S localhost:8080 -t ./nextcloud
echo '
server.port             = 8080
server.document-root    = "~/nextcloud"
server.upload-dirs      = ( "/data/data/com.termux/files/usr/tmp" )
index-file.names        = ( "index.html" )
mimetype.assign         = (
                                ".html" => "text/html",
                                ".txt" => "text/plain",
                                ".css" => "text/css",
                                ".js" => "application/x-javascript",
                                ".jpg" => "image/jpeg",
                                ".jpeg" => "image/jpeg",
                                ".gif" => "image/gif",
                                ".png" => "image/png",
                                "" => "application/octet-stream"
                        )
' > lighttpd.conf
lighttpd -f lighttpd.conf
