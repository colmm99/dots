#!/bin/bash

sudo pacman-mirrors -c United_Kingdom,France

PACKAGE_LIST="feh
	      	rdesktop 
                git
		terminator
		cmatrix 
		iotop htop glances 
		zsh 
                tmux
                perf
                python-pip
		firefox openssh docker
                terraform
		snapd
		ansible"

		# Old Apps
		#pm-utils
sudo pacman -Sy ${PACKAGE_LIST}

sudo pip install awscli


echo "Enable Docker Service and reboot

sudo systemctl start docker
sudo systemctl enable docker

Reboot so current user can run docker without sudo

"

sudo systemctl start snapd
sudo systemctl enable snapd
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install kubectl --classic
sudo snap install chromium --classic


echo "Add /snap/bin to your PATH"

echo "Install OhMyZSH"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
