#! /bin/bash

CUR=`cat /sys/class/backlight/intel_backlight/brightness`
MAX=`cat /sys/class/backlight/intel_backlight/max_brightness`

if [ "$1" = "set" ]; then
	CUR=$2
elif [ "$1" = "up" ]; then
	CUR=$(($CUR + $2))
elif [ "$1" = "down" ]; then
	CUR=$(($CUR - $2))
fi

if [ "$CUR" -gt "$MAX" ]; then
	CUR=$MAX
elif [ "$CUR" -lt 0 ]; then
	CUR=0
fi


echo $CUR > /sys/class/backlight/intel_backlight/brightness
