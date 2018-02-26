#!/bin/bash

sudo pacman-mirrors -c Ireland,United_Kingdom,France

PACKAGE_LIST="feh
	      	rdesktop 
                git
		TERMINAtor
		cmatrix 
		iotop htop glances 
		zsh 
                tmux
                perf
		pm-utils
                python-pip
		firefox openssh docker
                terraform
		ansible"

sudo pacman -Sy ${PACKAGE_LIST}

sudo pip install awscli
