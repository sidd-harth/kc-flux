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

kubectl apply -f https://raw.githubusercontent.com/sid-demo/bb-app-source/4-demo/minio/minio-s3.yml

curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

git clone https://github.com/sid-demo/bb-app-source


kubectl taint node controlplane node-role.kubernetes.io/control-plane-

apt install tree -y
apt install jq -y 

curl -o /usr/local/bin/mc https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x /usr/local/bin/mc
mc --version