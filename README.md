# nextcloud_on_android
script to install nextcloud 23 on android (firetv cube/stick, nvidia shield, phone etc)

- install termux from fdroid https://f-droid.org/en/packages/com.termux/
- paste following code into termux to start:

`termux-setup-storage; pkg update -o Dpkg::Options::='--force-confold' --force-yes -fuy; pkg install wget -y; wget -O - https://github.com/BenjaminWegener/nextcloud_on_android/raw/main/install.sh | bash;`

finally open a browser and navigate to http://localhost:8080/ to finish the setup. 
