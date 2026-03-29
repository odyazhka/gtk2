# gtk2

Установить нужные пакеты:
``` sudo apt install icewm icewm-common zzzfm arc tint2 leafpad ```



Поместить файл .gtlrc в *~/*

Поместить файл gtk.css в *~/.config/gtk-3.0/*

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

Скачать файлы backlight-brightness.png и emixer.png. Переместить их в домашнюю директорию и заменить командами:

```
sudo rm /usr/share/icons/hicolor/128x128/apps/emixer.png
sudo cp ~/emixer.png /usr/share/icons/hicolor/128x128/apps/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo cp  ~/backlight-brightness.png /usr/share/pixmaps/
```

