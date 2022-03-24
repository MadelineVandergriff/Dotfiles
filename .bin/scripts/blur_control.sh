#! /bin/bash

if [[ "$1" == "clear" ]]; then
	killall compton
	compton -bf --backend glx
elif [[ "$1" == "toggle" ]]; then
	if [[ "$(ps aux | grep compton | head -n 1 | awk '{print $13}')" == "--backend" ]]; then
		echo "Blurring!"
		killall compton
		compton -bf --blur-method kawase --blur-strength 9 --backend glx --blur-background -O 0.15 -D 6
	else
		echo "Clearing!"
		killall compton
		compton -bf --backend glx
	fi
else
	killall compton
	compton -bf --blur-method kawase --blur-strength 9 --backend glx --blur-background -O 0.15 -D 6
fi

