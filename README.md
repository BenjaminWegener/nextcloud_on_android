# nextcloud_on_android
script to install nextcloud 23 on android (fitetvcube, nvidia shield, phone etc)

-  install userland from fdroid https://www.f-droid.org/en/packages/tech.ula/
- inside userland install debian with ssh, set a username and password
- ssh opens up automatically, asking for your password
- paste following code to start:

`sudo apt update -y; sudo apt install wget -y; wget -O - https://github.com/BenjaminWegener/nextcloud_on_android/raw/main/install.sh | bash;`
