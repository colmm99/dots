#!/bin/bash

source common.sh

kops create cluster \
    --zones eu-west-1a \
    ${NAME} \
    --node-count=3 --node-size=t2.micro \
    --master-size=t2.micro --yes

sleep 180

# Validate Cluster wait till ready
kops validate cluster

# Addons
# https://github.com/kubernetes/kops/blob/master/docs/addons.md

## Heapster
kubectl create -f https://raw.githubusercontent.com/kubernetes/kops/master/addons/monitoring-standalone/v1.7.0.yaml

## Dashboard
kubectl create -f https://raw.githubusercontent.com/kubernetes/kops/master/addons/kubernetes-dashboard/v1.8.1.yaml

# Get Status
kubectl get all --all-namespaces=true

# k8s Cluster Info
kubectl cluster-info

# Dashboard Password for Admin
kops get secrets kube --type secret -oplaintext

