#!/bin/sh

CHECK_KEYBOARD=$(lsusb | grep "HyperX")
DEVICE_NAME="Bus 002 Device 002: ID 0951:16c6 Kingston Technology HyperX Mars Gaming KeyBoard"

if [ "$CHECK_KEYBOARD" = "$DEVICE_NAME" ];then
    setxkbmap us
    setxkbmap -option "ctrl:nocaps"
else
    setxkbmap br
    setxkbmap -option "ctrl:nocaps"
fi
