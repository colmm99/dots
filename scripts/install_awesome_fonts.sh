#!/bin/bash
#
# Get the Awesome Fonts

if [ ! -d  ~/.fonts ];then
	mkdir ~/.fonts
fi

# Download Font if it Doesn't already exist
if [ ! -f ~/.fonts/fontawesome-webfont.ttf ];then 
	cd /tmp
	curl -O https://codeload.github.com/FortAwesome/Font-Awesome/zip/v4.5.0
	unzip -oq v4.5.0
	cp -v /tmp/Font-Awesome-4.5.0/fonts/fontawesome-webfont.ttf ~/.fonts
	rm -rf /tmp/Font-Awesome-4.5.0
fi
