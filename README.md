# nextcloud_on_android
script to install nextcloud 23 on android (firetv cube/stick, nvidia shield, phone etc)

- install termux from fdroid https://f-droid.org/en/packages/com.termux/
- install termux:boot from https://f-droid.org/en/packages/com.termux.boot/ and run it once
- open termux and paste following code start:

`termux-setup-storage; pkg update -o Dpkg::Options::='--force-confold' --force-yes -fuy; pkg install wget -y; wget -O - https://github.com/BenjaminWegener/nextcloud_on_android/raw/main/install.sh | bash;`

finally open a browser and navigate to http://localhost:8080/ to finish the setup. 
essentially this will install a termux instance, that runs on boot and prevents deep sleep of your device.
the nextcloud server will be open to all external hosts and no SSL certificate will be used!
