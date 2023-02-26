#!/bin/bash

# namespace=$(kubectl get ns -o json)

# echo $namespace | grep flux-system > /dev/null

# if [ $? -eq 0 ] ;
# then
#         echo namespace flux-system exists
#         sleep 1
# else
#         echo namespace flux-system does not exists
# fi


echo PS1='"\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\$\[\033[0;37m\] "' >> ~/.bashrc

source ~/.bashrc

k apply -f https://raw.githubusercontent.com/sid-demo/bb-app-source/4-demo/minio/minio-s3.yml

sleep 5

curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

sleep 5

git clone https://github.com/sid-demo/bb-app-source

k taint node controlplane node-role.kubernetes.io/control-plane-

apt install tree -y