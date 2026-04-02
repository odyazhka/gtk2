#!/bin/bash

# ==============================================================================
# НАСТРОЙКА VISUDO
# Чтобы команды управления питанием работали без пароля, выполните в терминале
# команду 'sudo visudo' и добавьте в конец открывшегося файла следующую строку
# (замените 'username' на ваш реальный логин):
#
# username ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /usr/sbin/pm-suspend, /usr/sbin/pm-hibernate
# ==============================================================================

pkill jgmenu

# Вызов окна yad с кнопками управления
yad --title="Меню выхода" \
    --undecorated \
    --on-top \
    --center \
    --width=500 \
    --height=120 \
    --borders=15 \
    --text="<span font='15'>Выберите действие:</span>" \
    --text-align=center \
    --button="<span font='13' background='#ff7a7a'> ⏻ Выключение </span>:10" \
    --button="<span font='13' background='#7eff7a'> ↻ Перезагрузка </span>:11" \
    --button="<span font='13' background='#fffd7a'> ⏸ Ждущий режим </span>!:12" \
    --button="<span font='13' background='#ffd07a'> 🜔 Гибернация </span>!:13" \
    --button="<span font='13' background='#7ac8ff'> ↓ Выход </span>:14" \
    --button="<span font='13'>Отмена</span>:0"

# Считываем код возврата, который отдает yad после закрытия окна
EXIT_CODE=$?

# Выполняем действия в соответствии с кодом
case $EXIT_CODE in
    10)
        sudo /sbin/poweroff
        ;;
    11)
        sudo /sbin/reboot
        ;;
    12)
        sudo /usr/sbin/pm-suspend
        ;;
    13)
        sudo /usr/sbin/pm-hibernate
        ;;
    14)
        # Безопасный выход для сессии IceWM
        icewm-session --exit || icesh logout
        ;;
    0|252|*)
        # Код 0 — нажата кнопка "Отмена"
        # Код 252 — нажата клавиша Esc или произошла отмена фокуса
        # В этих случаях просто ничего не делаем и выходим
        exit 0
        ;;
esac
