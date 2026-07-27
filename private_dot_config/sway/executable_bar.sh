#!/bin/bash
while true
do
	datetime="$(date)"
	battery="$(acpi)"
	network="$(wpa_cli status | grep "wpa_state")"
	
	echo "${network} || ${datetime} || ${battery}"
done
