# antix

## Скриншоты

Меню пуск и потребление русурсов:

<img width="1920" height="1079" alt="изображение" src="https://github.com/user-attachments/assets/70a6a25b-0e3a-4314-a953-2cb0ad5fcd72" />

Панель выключения

<img width="1918" height="1080" alt="2026-04-02_18-03" src="https://github.com/user-attachments/assets/cf4d3cec-f8d4-435a-a33d-c025b6c54ea9" />


## Установка

#### 1. Установить IceWM:

``` sudo apt install xorg xinit icewm icewm-common ```

#### 2. Создать файл .Xinitrc

``` sudo nano .Xinitrc ```

И написать там:

``` icewm-session ```

#### 3. Запустить скрипт install.sh

```
sudo chmod +x ~/install.sh
~/install.sh
```

#### 3. Установить пакеты:

``` sudo apt install zzzfm ark tint2 jgmenu leafpad qasmixer acpi xterm iwd yad ```

Удалить ceni:

``` sudo apt purge ceni ```

#### 3. Добавить конфиги:

Скачать все файлы, распаковать архив. Все файлы переместить в домашнюю директорию

Поместить файлs .gtkrc-2.0, logout.sh, wifi.sh,  в *~/*

Переместить папку jgmenu в *~/.config/*

Файлы startup и keys переместить в *~/.icewm/*

Папку IceW11 переместить в *~/.icewm/themes/*

```
sudo mkdir -p ~/.icewm/themes
sudo mkdir -p ~/.config/tint2
sudo mv ~/jgmenu  ~/.config/
sudo mv ~/startup ~/.icewm/
sudo mv ~/theme ~/.icewm/
sudo mv ~/keys ~/.icewm/
sudo mv ~/preferences ~/.icewm/
sudo mv ~/IceW11 ~/.icewm/themes/
sudo mv ~/tint2rc  ~/.config/tint2/
```

Сделать скрипты исполняемым:
```
sudo chmod +x ~/.icewm/startup
sudo chmod +x ~/.icewm/keys
sudo chmod +x ~/.icewm/preferences
sudo chmod +x ~/.icewm/theme
sudo chmod +x ~/logout.sh
sudo chmod +x ~/wifi.sh

```

#### 4. Установить шрифты:

```
sudo apt install fonts-inter ttf-mscorefonts-installer fonts-liberation fonts-dejavu fontconfig fonts-noto-core fonts-noto-ui-core fonts-noto-extra fonts-noto-cjk  fonts-noto-color-emoji
```

#### 5. Добавление иконок громкости, яркости и Wi-Fi

Добавить ярлыки и иконки командами:

```
sudo mv ~/audio.png /usr/share/applications/
sudo rm /usr/share/applications/qasmixer.desktop
sudo mv ~/qasmixer.desktop /usr/share/applications/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo mv  ~/backlight-brightness.png /usr/share/pixmaps/
sudo mv  ~/antix.png /usr/share/applications/
sudo mv  ~/wifi.png /usr/share/applications/
sudo mv  ~/wifi.desktop /usr/share/applications/
sudo mv  ~/poisk.png /usr/share/applications/
```
Перезапустить tint2:

```killall tint2 && tint2 & disown```


#### 6. Установка терминала xterm:

Применить конфиг для xterm командой

```xrdb -merge ~/.Xresurces ```

Удалить UXTerm и создать символическую ссылку на него:

``` sudo rm /usr/bin/uxterm && sudo ln -s /usr/bin/xterm /usr/bin/uxterm ```

#### 7. Сократить длинные название приложений

чтобы jgmenu не разъезжалось

```
sudo rm /usr/share/applications/antiX-cli-cc.desktop
sudo mv  ~/antiX-cli-cc.desktop /usr/share/applications/
sudo rm /usr/share/applications/chroot-rescue-scan.desktop
sudo mv  ~/chroot-rescue-scan.desktop /usr/share/applications/
sudo rm /usr/share/applications/cli-aptiX.desktop
sudo mv  ~/cli-aptiX.desktop /usr/share/applications/
sudo rm /usr/share/applications/persist_save.desktop
sudo mv  ~/persist_save.desktop /usr/share/applications/
```
