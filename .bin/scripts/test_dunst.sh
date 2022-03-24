#! /bin/bash

killall dunst
dunst -conf .config/dunst/dunstrc &!
notify-send "Testing purposes" "test notification"
