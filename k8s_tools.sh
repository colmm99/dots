#!/bin/bash

# k8s Tools
if [ ! /opt/kubectx ];then
    sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
    sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
    sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
else
    cd /opt/kubectx
    sudo git pull
fi
