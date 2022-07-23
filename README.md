# nextcloud_on_android
script to install nextcloud 23 on android (fitetvcube, nvidia shield, phone etc)

-  install userland from fdroid https://www.f-droid.org/en/packages/tech.ula/
- inside userland install debian with ssh
- ssh opens up on doubleclick
- paste following code to start:

`sudo apt update -y; sudo apt install wget -y; wget -O https://githubusercontent.com/BenjaminWegener/nextcloud_on_android/install.sh | bash;`
