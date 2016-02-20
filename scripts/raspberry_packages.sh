#!/bin/bash

PACKAGE_LIST="vim 
              i3 feh
	      	rdesktop terminator
		iceweasel 
		cmatrix 
		iotop htop glances 
		zsh 
		ansible"

sudo apt-get install -y ${PACKAGE_LIST}
