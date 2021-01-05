#!/bin/bash

CHECK_KEYBOARD=$(lsusb | grep "HyperX")

if [[ $CHECK_KEYBOARD =~ "HyperX" ]];then
    setxkbmap us
    xmodmap ~/.Xmodmap
else
    setxkbmap br
    xmodmap ~/.Xmodmap
fi
