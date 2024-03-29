#!/bin/bash

echo PS1='"\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\$\[\033[0;37m\] "' >> ~/.bashrc

source ~/.bashrc


curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.19.5/kubeseal-0.19.5-linux-amd64.tar.gz
tar -xvzf kubeseal-0.19.5-linux-amd64.tar.gz
mv kubeseal /usr/local/bin/kubeseal

#git clone https://github.com/sid-demo/bb-app-source

kubectl taint node controlplane node-role.kubernetes.io/control-plane-

apt install tree -y