#!/bin/bash
#
# colmm99: 2016-02-19
#

check_platform ()
{
	#HARDWARE=$(grep Hardware /proc/cpuinfo | awk '{ print $3 }')
	PLATFORM=$(uname -m)
	if [ "${PLATFORM}" == "armv7l" ];then
		echo "Raspberry Pi 2"
		PLATFORM=raspberry
	elif [ "${PLATFORM}" == "x86_64" ];then
		PLATFORM="linux"
	elif [ "${PLATFORM}" == "aarch64" ];then
		PLATFORM="pinebookpro"
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

#
# Run functions
#
fonts
check_platform

#
# Copy Pictures into place for i3 Backgrounds and screen locks
#
if [ ! -d ~/Pictures ];then
    mkdir ~/Pictures
fi
cp -v ../pictures/*.png ~/Pictures

sudo pacman -Syy i3
#
# Copy Files to Raspberry PI, for i3 first
#
cp -v ../i3/config.$PLATFORM ~/.i3/config
cp -v ../i3/i3blocks.conf.$PLATFORM ~/.i3blocks.conf

#
# Copy RC Files into place
#
for RCFILE in $(ls ../rcs/)
do
	cp -v ../rcs/$RCFILE ~/.$RCFILE
done
