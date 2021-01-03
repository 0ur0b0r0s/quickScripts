#!/bin/bash

CHECK=$(ps aux | awk '/nvim/ { print $11 }' | head -n1)
SERVER=$(du -a /tmp/ 2>/dev/null | awk '/nvim/ { print $2 }' | grep "0")

if [[ $CHECK =~ "nvim" ]];then
    nvr --servername $SERVER $1
else 
    nvim $1
fi
