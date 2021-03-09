#!/bin/bash
clear
echo "Starting Minikube cluster"


TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
echo -e "Backup ~/.kube/config file as ~/.kube/config_backup_${TIMESTAMP}"
mv ~/.kube/config ~/.kube/config_backup_${TIMESTAMP}


export CHANGE_MINIKUBE_NONE_USER=true
minikube start --memory 6000  --driver=docker --kubernetes-version=stable

#sudo minikube start --memory 6000  --vm-driver=none --extra-config=apiserver.authorization-mode=RBAC

