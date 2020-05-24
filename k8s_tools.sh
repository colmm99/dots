#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# k8s Tools
<<<<<<< Updated upstream
if [ ! /opt/kubectx ];then
    sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
    sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
    sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
else
    cd /opt/kubectx
    sudo git pull
=======
printf "\n${YELLOW}Installing kubectx and kubens.${NC}\n"
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

printf "\n${YELLOW}Installing kube-ps1.${NC}\n"
if [ ! -f ~/kube-ps1.sh ];then
    cd ~
    curl -sLO https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh
    cd
>>>>>>> Stashed changes
fi

KUBECTL_VER=v1.16.0
printf "\n${YELLOW}Installing Kubectl.${NC}\n"
curl -sLO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VER}/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client

KOPS_VERSION=1.14.0
printf "\n${YELLOW}Installing Kops.${NC}\n"
curl -sLO https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
kops version

