#!/bin/bash

PACKAGE_LIST="feh
	      	rdesktop 
		terminator
		cmatrix 
		iotop htop glances 
		zsh 
                tmux
                perf
		pm-utils
		ansible"

sudo pacman -Sy ${PACKAGE_LIST}
