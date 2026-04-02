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

Скачать все файлы, распаковать архив

Поместить файл .gtkrc в *~/*

Поместить файл logout.sh в *~/*

Поместить файл gtk.css в *~/.config/gtk-3.0/*

Поместить папку jgmenu в *~/.config/*

Поместить файл wifi.sh в *~/*

Файл startup переместить в *~/.icewm/*

Файл keys переместить в *~/.icewm/*

Папку IceW11 переместить в *~/.icewm/themes/*

Сделать файл автозапуска исполняемым:
```
sudo chmod +x ~/.icewm/startup
sudo chmod +x ~/.icewm/keys
sudo chmod +x ~/logout.sh
sudo chmod +x ~/wifi.sh
```

Нажать ПКМ > Настройки > Темы > IceW11

#### 4. Установление gtk-темы

Скачать gtk тему отсюда: https://www.gnome-look.org/p/2278411

Установить иконки и шрифты:

```
sudo apt install lxappearance papirus-icon-theme fonts-inter
sudo lxappearance
```

Установитиь шрифт Inter и тему Win11

#### 5. Замена иконок звука и громкости

Скачать файлы backlight-brightness.png, audio.png и pavucontrol-qt.desktop. Переместить их в домашнюю директорию и заменить командами:

```
sudo mv ~/audio.png /usr/share/applications/
sudo mv ~/pavucontrol-qt.desktop /usr/share/applications/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo mv  ~/backlight-brightness.png /usr/share/pixmaps/
sudo mv  ~/antix.png /usr/share/applications
```

В *~/.config/tint2/* вставить файл tint2rc

Запустить, проверить

#### 6. Установка терминала xterm:

Установить xterm если ещё нет

Скачанный файл .Xresources переместить в домашнюю директорию

Применить конфиг командой

```xrdb -merge ~/.Xresurces ```

Удалить UXTerm и создать символическую ссылку на него:

``` sudo rm /usr/bin/uxterm && sudo ln -s /usr/bin/xterm /usr/bin/uxterm ```


#### 7. Уствновка скрипта для вайфая:

Переместить скрипт wifi.sh и wifi.png и wifi.desktop в домашниюю директорию

Сделать скрипт исполняемем:

``` sudo chmod +x ~/wifi.sh ```

Переместить wifi.png и wifi.desktop командой:

```
sudo mv ~/wifi.png /usr/share/applications/
sudo mv ~/wifi.desktop /usr/share/applications/
```

