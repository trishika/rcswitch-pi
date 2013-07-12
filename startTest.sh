#!/bin/bash

code="10101"
devices="10000 01000 00100 00010"

for device in $devices; do
	echo $device
	sudo ./send $code $device 0
	sleep 1
	sudo ./send $code $device 1
	sleep 1
done

