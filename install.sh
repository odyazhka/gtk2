sudo apt update -y
sudo apt install -y xorg xinit icewm icewm-common zzzfm ark tint2 jgmenu leafpad qasmixer acpi xterm iwd yad fonts-inter ttf-mscorefonts-installer fonts-liberation fonts-dejavu fontconfig fonts-noto-core fonts-noto-ui-core fonts-noto-extra fonts-noto-cjk  fonts-noto-color-emoji
sudo apt purge -y ceni
sudo mkdir -p $HOME/.icewm/themes
sudo mkdir -p $HOME/.config/tint2
sudo mv jgmenu  $HOME/.config/
sudo mv startup $HOME/.icewm/
sudo mv theme $HOME/.icewm/
sudo mv keys $HOME/.icewm/
sudo mv preferences $HOME/.icewm/
sudo mv IceW11 $HOME/.icewm/themes/
sudo mv tint2rc  $HOME/.config/tint2/
sudo mv .gtkrc-2.0  $HOME/.config/tint2/
sudo mv logout.sh  $HOME/.config/tint2/
sudo mv wifi.sh  $HOME/.config/tint2/
sudo mv .Xresurces  $HOME/.config/tint2/
sudo chmod +x $HOME/.icewm/startup
sudo chmod +x $HOME/.icewm/keys
sudo chmod +x $HOME/.icewm/preferences
sudo chmod +x $HOME/.icewm/theme
sudo chmod +x $HOME/logout.sh
sudo chmod +x $HOME/wifi.sh
sudo chmod +x $HOME/.gtkrc-2.0
sudo chmod +x $HOME/.Xresurces
sudo mv audio.png /usr/share/applications/
sudo rm /usr/share/applications/qasmixer.desktop
sudo mv qasmixer.desktop /usr/share/applications/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo mv backlight-brightness.png /usr/share/pixmaps/
sudo mv antix.png /usr/share/applications/
sudo mv wifi.png /usr/share/applications/
sudo mv wifi.desktop /usr/share/applications/
sudo mv poisk.png /usr/share/applications/
xrdb -merge $HOME/.Xresurces
sudo rm /usr/bin/uxterm && sudo ln -s /usr/bin/xterm /usr/bin/uxterm
sudo rm /usr/share/applications/antiX-cli-cc.desktop
sudo mv antiX-cli-cc.desktop /usr/share/applications/
sudo rm /usr/share/applications/chroot-rescue-scan.desktop
sudo mv chroot-rescue-scan.desktop /usr/share/applications/
sudo rm /usr/share/applications/cli-aptiX.desktop
sudo mv cli-aptiX.desktop /usr/share/applications/
sudo rm /usr/share/applications/persist_save.desktop
sudo mv persist_save.desktop /usr/share/applications/
sudo icewm --restart
