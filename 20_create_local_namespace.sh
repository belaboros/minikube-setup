#!/bin/bash

K8S_NS=${1-kafka}
echo "Creating a development namespace: \"${K8S_NS}\""



echo -e "\n\n\nCreate namespace: ${K8S_NS}"
kubectl create namespace ${K8S_NS}

#kubectl config set-context  ${K8S_NS} --cluster=minikube --user=minikube --namespace=${K8S_NS}
kubectl config set-context  ${K8S_NS} --cluster=minikube --user=minikube --namespace=${K8S_NS}

#kubectl config set-context --current --namespace=${K8S_NS}
#kubectl config set-context ${K8S_NS} --namespace=${K8S_NS}

kubectl config use-context ${K8S_NS}



echo -e "Backup ~/.kube/config file as ~/.kube/config_minikube"
cp ~/.kube/config ~/.kube/config_minikube


