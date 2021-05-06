#!/bin/bash

CHOICE=$(printf "BR\nUS" | dmenu)

if [ $CHOICE = "BR" ];then
    setxkbmap br && setxkbmap -option "ctrl:nocaps"

elif [ $CHOICE = "US" ];then
    setxkbmap us && setxkbmap -option "ctrl:nocaps"
fi
