#!/bin/sh

LINK=$(dmenu -i | tr '[:upper:]' '[:lower:]')
if [[ -n "$LINK" ]]; then
	#echo "$LINK" >> /home/jack/Documents/testing/latin
	LINK="https://en.wiktionary.org/wiki/$LINK#Latin"
	echo "$LINK" | xclip
	xdotool mousemove 500 105
	xdotool click 1
	xdotool key "BackSpace"
	xdotool click 2
	xdotool key "Return"
fi
