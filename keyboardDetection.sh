#!/bin/sh

CHECK_KEYBOARD=$(lsusb | grep "HyperX")

if [ $CHECK_KEYBOARD =~ "Bus 002 Device 002: ID 0951:16c6 Kingston Technology HyperX Mars Gaming KeyBoard" ];then
    setxkbmap us
    xmodmap ~/.Xmodmap
else
    setxkbmap br
    xmodmap ~/.Xmodmap
fi
