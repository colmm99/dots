#!/bin/bash

PACKAGE_LIST="feh
	      	rdesktop 
		terminator
		cmatrix 
		iotop htop glances 
		zsh 
		pm-utils
		ansible"

sudo pacman -Sy ${PACKAGE_LIST}
