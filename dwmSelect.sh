#!/usr/bin/sh

CHOICE=$(printf "Logout\nShutdown\nReboot" | dmenu)

if [ $CHOICE = "Logout" ];then
    killall dwm
elif [ $CHOICE = "Shutdown" ];then
    shutdown -h now
elif [ $CHOICE = "Reboot" ];then
    reboot
fi
