#!/bin/zsh
# 
# 

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color


printf "\n${YELLOW}If you need to become root then follow the link here. https://github.com/agowa338/WSL-DistroLauncher-Alpine ${NC}\n"
printf "${YELLOW}Start alpine as root and add sudo, alpine config --default-user root, add sudo change root password and then switch back to your username ${NC}\n"

printf "\n${GREEN}[INFO] APK Update ${NC}\n"
sudo apk update

printf "\n${GREEN}[INFO] APK Upgrade ${NC}\n"
sudo apk upgrade

printf "\n${GREEN}[INFO] APK install APPS ${NC}\n"
sudo apk add tmux htop openssh-client vim \
	iotop glances tree \
	terraform ansible zip unzip \
	bind-tools python ncurses less figlet sl \
	curl exa

if [ ! -f $(which pip3) ];then
   printf "\n${GREEN}[INFO] Install Pip3 ${NC}\n"
   curl -O https://bootstrap.pypa.io/get-pip.py
   python get-pip.py --user
fi

printf "\n${GREEN}[INFO] Install Pip3 ${NC}\n"
curl -O https://bootstrap.pypa.io/3.4/get-pip.py
python3 get-pip.py --user
python3 -m pip install --user --upgrade pip
pip3 -V

printf "\n${GREEN}[INFO] Upgrade AWS CLI Version ${NC}\n"
pip3 install awscli --upgrade --user

export PATH=~/.local/bin:$PATH
printf "\n${GREEN}[INFO] Checking AWS CLI Version ${NC}\n"
aws --version

if [ ! -f kube-ps1.sh ];then
   printf "\n${GREEN}[INFO] Download kube-ps1 ${NC}\n"
   curl -LO https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
fi

printf "\n${GREEN}[INFO] Install OhMyZSH ${NC}\n"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ];then
   printf "\n${GREEN}[INFO] Install ZSH Auto Suggestions ${NC}\n"
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   sed -i 's/^plugins=/$$ plugins=(git zsh-autosuggestions TEST)/' ~/.zshrc
fi
