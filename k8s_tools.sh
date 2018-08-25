#!/bin/bash

# k8s Tools
curl -LO https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens
chmod +x kubens
sudo mv kubens /usr/local/bin/

curl -LO https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
chmod +x kubectx
sudo mv kubectx /usr/local/bin/

curl -LO https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
chmod +x kube-ps1.sh
sudo mv kube-ps1.sh /usr/local/bin/
