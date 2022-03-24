#! /bin/bash

if [[ -z `xrandr | grep  "eDP-1-1" | grep "1920"` ]]; then
	# eDP off
	xrandr --output eDP-1-1 --auto --left-of HDMI-1-1
	xrandr --output HDMI-1-1 --off
else
	xrandr --output HDMI-1-1 --right-of eDP-1-1
	xrandr --output eDP-1-1 --off
	~/.bin/scripts/monitor.sh
fi
