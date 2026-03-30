# gtk2

Установить нужные пакеты:
``` sudo apt install xorg xinit icewm icewm-common zzzfm arc tint2 tint2conf jgmenu leafpad pulseaudio pavucontrol-qt cbatticon acpi ```



Поместить файл .gtlrc в *~/*

Поместить файл gtk.css в *~/.config/gtk-3.0/*

Поместить папку jgmenu в *~/.config/*

Скачать gtk тему отсюда: https://www.gnome-look.org/p/2278411

Установить иконки и шрифты:

```
sudo apt install lxappearance papirus-icon-theme fonts-inter
sudo lxappearance
```

Установитиь шрифт Inter и тему Win11

Папку IceW11 переместить в *~/.icewm/themes/*

Файл startup переместить в *~/.icewm/*

Нажать ПКМ > Настройки > Темы > IceW11

#### Замена иконок звука и громкости

Скачать файлы backlight-brightness.png, audio.png и pavucontrol-qt.desktop. Переместить их в домашнюю директорию и заменить командами:

```
sudo cp ~/audio.png /usr/share/applications/
sudo cp ~/pavucontrol-qt.desktop /usr/share/applications/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo cp  ~/backlight-brightness.png /usr/share/pixmaps/
```

В *~/.config/tint2/* вставить файл tint2rc
