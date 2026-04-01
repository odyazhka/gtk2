# antix-win11

## Скриншот
![image](https://github.com/user-attachments/assets/3dcd947f-03ee-4a23-a89f-b30782b051eb)

## Установка

#### 1. Установить нужные пакеты:

``` sudo apt install xorg xinit icewm icewm-common zzzfm ark tint2 jgmenu leafpad pulseaudio pavucontrol-qt acpi xterm ```

#### 2. Создать файл .Xinitrc


``` sudo nano .Xinitrc ```

И написать там:

``` icewm-session ```

#### 2. Добавить конфиги:

Скачать все файлы, распаковать архив

Поместить файл .gtlrc в *~/*

Поместить файл gtk.css в *~/.config/gtk-3.0/*

Поместить папку jgmenu в *~/.config/*

Файл startup переместить в *~/.icewm/*

Папку IceW11 переместить в *~/.icewm/themes/*

Нажать ПКМ > Настройки > Темы > IceW11

#### 3. Установление gtk-темы

Скачать gtk тему отсюда: https://www.gnome-look.org/p/2278411

Установить иконки и шрифты:

```
sudo apt install lxappearance papirus-icon-theme fonts-inter
sudo lxappearance
```

Установитиь шрифт Inter и тему Win11

#### 4. Замена иконок звука и громкости

Скачать файлы backlight-brightness.png, audio.png и pavucontrol-qt.desktop. Переместить их в домашнюю директорию и заменить командами:

```
sudo cp ~/audio.png /usr/share/applications/
sudo cp ~/pavucontrol-qt.desktop /usr/share/applications/
sudo rm /usr/share/pixmaps/backlight-brightness.png
sudo cp  ~/backlight-brightness.png /usr/share/pixmaps/
sudo cp  ~/antix.png /usr/share/applications
```

В *~/.config/tint2/* вставить файл tint2rc

Запустить, проверить

#### 5. Установка терминала xterm:

1. Установить xterm

``` sudo apt install xterm ```

2. Скачанный файл .Xresources переместить в домашнюю директорию

3. Применить конфиг командой

```xrdb -merge ~/.Xresurces ```

Удалить UXTerm:

``` sudo rm /usr/bin/uxterm && sudo ln -s /usr/bin/xterm /usr/bin/uxterm ```

