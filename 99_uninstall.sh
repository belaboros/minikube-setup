#!/bin/bash


clear

./91_stop.sh

NON_ROOT_USER=${1-bboros}
echo "Uninstalling and removing Minikube from system and from ${NON_ROOT_USER}"


sudo -- sh -c <<EOF "
echo \"Removing directories as ${USER} user\"
set -x
rm -rf /usr/local/bin/minikube
rm -rf /var/lib/minikube
rm -rf /data/minikube
rm -rf /root/.minikube
rm -rf /home/${NON_ROOT_USER}/.minikube
"
EOF

