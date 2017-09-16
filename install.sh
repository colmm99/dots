#!/bin/bash
#
# Copy all the basics into place
# colmm99: 2016-02-22
#
# Test via Circle CI
#
OLD_PWD=$PWD

cd scripts
./setup_i3.sh
cd -

ARCH=$(uname -m)

if [ "${ARCH}" == "x86_64" ];then
	./scripts/arch_apps.sh
elif [ "${ARCH}" == "armv7l" ];then
	./scripts/raspberry_packages.sh
fi

echo "Install Oh My zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
