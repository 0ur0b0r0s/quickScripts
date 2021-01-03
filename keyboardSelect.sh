#!/bin/bash

CHOICE=$(echo -e "BR\nUS" | dmenu)

if [[ $CHOICE =~ "BR" ]];then
    setxkbmap br && xmodmap ~/.Xmodmap

elif [[ $CHOICE =~ "US" ]];then
    setxkbmap us && xmodmap ~/.Xmodmap
fi
