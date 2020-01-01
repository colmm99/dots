#!/bin/bash

# k8s Tools
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

if [ ! -f ~/kube-ps1.sh ];then
    cd ~
    curl -LO https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
    cd
fi
