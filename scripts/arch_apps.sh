#!/bin/bash

sudo pacman-mirrors -c Ireland,United_Kingdom,France

PACKAGE_LIST="feh
	      	rdesktop 
                git
		terminator
		cmatrix 
		iotop htop glances 
		zsh 
                tmux
                perf
		pm-utils
		ansible"

sudo pacman -Sy ${PACKAGE_LIST}
