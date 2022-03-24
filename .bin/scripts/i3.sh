#! /bin/bash

xmodmap ~/.xmodmap
~/.fehbg

compton -bf --blur-method kawase --blur-strength 9 --backend glx --blur-background -O 0.15 -D 6
~/Documents/polybar-themes/polybar-7/launch.sh

sudo systemctl restart iwd.service
sudo dhcpcd

cadence
