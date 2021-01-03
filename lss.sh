#!/bin/bash

FILE=$(du -a ~/Programming | awk '{ print $NF }' | egrep "*.sh$|*.py$| *.pl$" | egrep -v "init|one_package|one_modules" | fzf)

nvim $FILE
