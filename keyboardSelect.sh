#!/bin/bash

CHOICE=$(echo -e "BR\nUS" | dmenu)

if [[ $CHOICE =~ "BR" ]];then
    setxkbmap br && setxkbmap -option "ctrl:nocaps"

elif [[ $CHOICE =~ "US" ]];then
    setxkbmap us && setxkbmap -option "ctrl:nocaps"
fi
