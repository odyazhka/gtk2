# antix-win11

## Скриншот
![image](https://github.com/user-attachments/assets/3dcd947f-03ee-4a23-a89f-b30782b051eb)

## Установка

#### 1. Установить нужные пакеты:

``` sudo apt install xorg xinit icewm icewm-common zzzfm ark tint2 jgmenu leafpad pulseaudio pavucontrol-qt acpi xterm iwd ```

#### 2. Создать файл .Xinitrc


``` sudo nano .Xinitrc ```

И написать там:

``` icewm-session ```

#### 3. Добавить конфиги:

Скачать все файлы, распаковать архив. Все файлы переместить в домашнюю директорию

Поместить файлs .gtkrc-2.0, logout.sh, wifi.sh,  в *~/*

Переместить папку jgmenu в *~/.config/*

Файлы startup и keys переместить в *~/.icewm/*

Папку IceW11 переместить в *~/.icewm/themes/*

```
sudo mv ~/.gtkrc-2.0 ~/.config/
sudo mv ~/startup ~/.icewm/
sudo mv ~/keys ~/.icewm/
sudo mv ~/IceW11 ~/.icewm/themes/
sudo mv ~/tint2rc  ~/.config/tint2/
```

Сделать скрипты исполняемым:
```
sudo chmod +x ~/.icewm/startup
sudo chmod +x ~/.icewm/keys
sudo chmod +x ~/.icewm/preferences
sudo chmod +x ~/logout.sh
sudo chmod +x ~/wifi.sh

```

Нажать ПКМ > Настройки > Темы > IceW11

#### 4. Установление gtk-темы

Установить иконки и шрифты:

```
sudo apt install papirus-icon-theme fonts-inter
```

Установитиь шрифт Inter и тему IceW11

#### 5. Замена иконок звука и громкости

Добавить ярлыки и иконки командами:

```
sudo mv ~/audio.png /usr/share/applications/
sudo mv ~/pavucontrol-qt.desktop /usr/share/applications/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo mv  ~/backlight-brightness.png /usr/share/pixmaps/
sudo mv  ~/antix.png /usr/share/applications/
sudo mv  ~/wifi.png /usr/share/applications/
sudo mv  ~/wifi.desktop /usr/share/applications/
```

#### 6. Установка терминала xterm:

Установить xterm если ещё нет


Применить конфиг командой

```xrdb -merge ~/.Xresurces ```

Удалить UXTerm и создать символическую ссылку на него:

``` sudo rm /usr/bin/uxterm && sudo ln -s /usr/bin/xterm /usr/bin/uxterm ```
