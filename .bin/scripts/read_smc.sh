#!/bin/sh

echo ""

while true; do
	while [[ -z "$(pgrep '^smc$')" ]]; do
		sleep 1
	done
	raw_out="$(cat /tmp/smc_out )"
	echo "${raw_out%????} "
	sleep 1
done
