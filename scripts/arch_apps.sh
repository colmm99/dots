#!/bin/bash

PACKAGE_LIST="vim 
              	i3 feh
	      	rdesktop 
		terminator
		cmatrix 
		iotop htop glances 
		zsh 
		pm-utils
		ansible"

sudo pacman -Sy ${PACKAGE_LIST}
