#!/bin/bash
#
# colmm99: 2016-02-19
#

check_platform ()
{
	#HARDWARE=$(grep Hardware /proc/cpuinfo | awk '{ print $3 }')
	HARDWARE=$(uname -m)
	if [ "${HARDWARE}" == "armv7l" ];then
		echo "Raspberry Pi 2"
		PLATFORM=raspberry
	elif [ "${HARDWARE}" == "x86_64" ];then
		PLATFORM=linux
	else
		echo "Unknown Hardware"
		PLATFORM=unknown
	fi
	echo "Platform=$PLATFORM"
}

fonts()
{
	./install_awesome_fonts.sh
}

# Run functions
fonts
check_platform

#
# Copy Pictures into place for i3 Backgrounds and screen locks
#
cp -v ../pictures/*.png ~/Pictures


#
# Copy Files to Raspberry PI, for i3 first
#
cp -v ../i3/config.$PLATFORM ~/.i3/config
cp -v ../i3/i3blocks.conf.$PLATFORM ~/.i3blocks.conf


# VIMrc 
cp -v ../rcs/vimrc ~/.vimrc
