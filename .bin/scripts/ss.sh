#! /bin/bash

NAME=`echo 'Default' | dmenu -p 'Screenshot Name'`

if [[ -n $NAME ]]; then
if [[ $NAME == 'Default' ]]; then
	scrot '%b %d %l:%M:%S.jpg' -e 'mv "$f" ~/Pictures/Screenshots' -d 1
else
	scrot "$NAME.jpg" -e 'mv "$f" ~/Pictures/Screenshots' -d 1
fi
fi
