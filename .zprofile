#! /bin/sh

X_SESSION=`ps aux | grep Xorg | wc -l`

if [[ $X_SESSION -gt 1 ]]; then
	echo "Xorg already started"
else
	startx > /dev/null
fi
