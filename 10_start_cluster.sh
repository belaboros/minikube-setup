#!/bin/bash


clear
echo "Starting Minikube cluster"

export CHANGE_MINIKUBE_NONE_USER=true
minikube start --memory 6000  --driver=docker --kubernetes-version=stable

#sudo minikube start --memory 6000  --vm-driver=none --extra-config=apiserver.authorization-mode=RBAC

