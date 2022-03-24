#! /bin/bash

# notify-send $USER

if xmodmap -pm | grep mod4 | grep -q Hyper; then
	xmodmap /home/jack/.config/x/crossbow.xmod
else
	xmodmap /home/jack/.config/x/archer.xmod
fi
