#! /bin/bash

MINESTATUS=''

while [[ "$MINESTATUS" != "TERMINATE" ]] ; do
	ethminer -U -P stratum2+tcp://32NKX2HEgUDktPehsSqHMptyH7qkCV9P6L.Archer@daggerhashimoto.usa.nicehash.com:3353 2>&1 | grep -i 'job' >> /tmp/minestatus &
	echo '[---] waiting for signal...'
	#MINESTATUS=$(cat /tmp/minestatus)
	sleep 100
	echo '[---] signal received'
	kill $(ps aux | grep 'ethminer' | head -n 1 | awk '{print $2}')
done
