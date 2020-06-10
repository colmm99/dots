#!/bin/bash
#
# Copy all the basics into place
# colmm99: 2016-02-22
#
# Test via Circle CI
##
OLD_PWD=$PWD

cd scripts
./setup_i3.sh
cd -

ARCH=$(uname -m)

if [ "${ARCH}" == "x86_64" ];then
	./scripts/arch_apps.sh
elif [ "${ARCH}" == "armv7l" ];then
	./scripts/raspberry_packages.sh
elif [ "${ARCH}" == "aarch64" ];then
	./scripts/pinepro.sh
fi

echo "Install Oh My zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


if [ ! -d ~/Projects ];then mkdir ~/Projects; fi

cd ~/Projects
if [ ! kube-ps1 ];then
    git clone https://github.com/jonmosco/kube-ps1.git
else
    cd kube-ps1
    git pull
    cd -
fi


if [ ! ~/Projects/kube-ps1.git ]; then
    echo "Setup kube-ps1.sh"
    ln -s ~/Projects/kube-ps1.git kube-ps1.git
fi

cd ~/Projects/dots
./tmux.sh

