#!/bin/bash

PACKAGE_LIST="feh
	      	rdesktop 
                git
		cmatrix 
		iotop htop glances 
		zsh tree
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

echo "Installing AWS CLI"
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


echo "Pinepook Prod Update Repo"
if [ ! -d ~/Projects/updates_repo ];then
    cd ~/Projects
    git clone https://github.com/mrfixit2001/updates_repo.git updates_repo
    cd -
fi

