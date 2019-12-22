#!/bin/zsh
# 
# 

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

printf "\n${YELLOW}Yellow\n${BLUE}Blue\n${PURPLE}Purple\n"

printf "\n${GREEN}[INFO] APK Update ${NC}\n"
sudo apk update

printf "\n${GREEN}[INFO] APK Upgrade ${NC}\n"
sudo apk upgrade

printf "\n${GREEN}[INFO] APK install APPS ${NC}\n"
sudo apk add tmux htop openssh-client vim \
	iotop glances tree \
	terraform ansible zip unzip \
	bind-tools python ncurses

if [ ! -f $(which pip3) ];then
   printf "\n${GREEN}[INFO] Install Pip3 ${NC}\n"
   curl -O https://bootstrap.pypa.io/get-pip.py
   python get-pip.py --user
fi

printf "\n${GREEN}[INFO] Upgrade AWS CLI Version ${NC}\n"
pip3 install --upgrade pip --user

export PATH=~/.local/bin:$PATH
printf "\n${GREEN}[INFO] Checking AWS CLI Version ${NC}\n"
aws --version

if [ ! -f kube-ps1.sh ];then
   printf "\n${GREEN}[INFO] Download kube-ps1 ${NC}\n"
   curl -LO https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
fi

printf "\n${GREEN}[INFO] Install OhMyZSH ${NC}\n"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

