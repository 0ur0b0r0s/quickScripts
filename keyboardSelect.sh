#!/bin/bash

CHOICE=$(echo -e "BR\nUS" | dmenu)

if [[ $CHOICE =~ "BR" ]];then
    setxkbmap br
elif [[ $CHOICE =~ "US" ]];then
    setxkbmap us
fi
