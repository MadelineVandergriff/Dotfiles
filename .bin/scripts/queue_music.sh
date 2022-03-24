#! /bin/bash

SONG=$(ls /home/jack/Music/wav | dmenu -i)

if [[ -n "$SONG" ]]
then
	if [[ "$1" == "-n" ]]
	then
		echo "$SONG" > /tmp/smc
	else
		echo ":q$SONG" > /tmp/smc
	fi
fi
