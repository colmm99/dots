#!/bin/bash

source common.sh

# Delete
kops delete cluster --name ${NAME} --yes

