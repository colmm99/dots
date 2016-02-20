#!/bin/bash

check_platform ()
{
	HARDWARE=$(grep Hardware /proc/cpuinfo | awk '{ print $3 }')
	if [ "${HARDWARE}" == "BCM2709" ];then
		echo "Raspberry Pi 2"
		PLATFORM=raspberry
	else
		echo "Unknown Hardware"
		PLATFORM=unknown
	fi
}

check_platform
echo "Hardware=$PLATFORM"

# Copy Pictures into place for i3 Backgrounds and screen locks

cp -v ../pictures/*.png ~/Pictures

# Copy Files to Raspberry PI, for i3 first
if [ "${PLATFORM}" == "raspberry" ];then
	cp -v ../i3/config.$PLATFORM /tmp/config.$PLATFORM.$RANDOM
elif [ "${PLATFORM}" == "raspberry" ];then
	cp -v ../i3/config /tmp/config.$PLATFORM.$RANDOM
else 
