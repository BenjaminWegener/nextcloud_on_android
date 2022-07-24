#!/bin/bash
pkg install -y unzip sqlite php lighttpd
wget --no-check-certificate https://download.nextcloud.com/server/releases/latest-24.zip
unzip latest-24.zip
sed -i 's/localhost:8080/*/g' ./nextcloud/config/config.sample.php
echo '
server.port             = 8080
server.document-root    = "/data/data/com.termux/files/home/nextcloud"
server.upload-dirs      = ( "/data/data/com.termux/files/usr/tmp" )
index-file.names        = ( "index.html" )
mimetype.assign = (
    ".html" => "text/html",
    ".txt" => "text/plain",
    ".css" => "text/css",
    ".js" => "application/x-javascript",
    ".jpg" => "image/jpeg",
    ".jpeg" => "image/jpeg",
    ".gif" => "image/gif",
    ".png" => "image/png",
    ".svg" => "image/svg+xml",
    "" => "application/octet-stream"
)
server.modules = (
    "mod_auth",
    "mod_access",
    "mod_accesslog",
    "mod_fastcgi",
    "mod_rewrite"
)
fastcgi.server = ( ".php" => ((
                     "bin-path" => "/data/data/com.termux/files/usr/bin/php-cgi",
                     "socket" => "/data/data/com.termux/files/usr/tmp/php.socket"
                 )))
' > lighttpd.conf
mkdir -p ./.termux/boot
echo '
#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
lighttpd -f ~/lighttpd.conf
' > ./.termux/boot/start-lighttpd.sh
lighttpd -f lighttpd.conf
