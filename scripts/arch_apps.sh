#!/bin/bash

PACKAGE_LIST="vim 
              	i3 feh
	      	rdesktop terminator
		cmatrix 
		iotop htop glances 
		zsh 
		ansible"

sudo pacman -Sy ${PACKAGE_LIST}
