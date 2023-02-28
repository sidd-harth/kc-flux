#!/bin/bash

echo PS1='"\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\$\[\033[0;37m\] "' >> ~/.bashrc

source ~/.bashrc

rm /usr/bin/helm
curl https://get.helm.sh/helm-v3.10.3-linux-amd64.tar.gz --output helm-v3.10.3-linux-amd64.tar.gz -s
tar -zxvf helm-v3.10.3-linux-amd64.tar.gz
mv linux-amd64/helm /usr/bin/helm

mkdir -p ~/flux-training/helm
touch ~/flux-training/helm/values.yml

cat <<EOF >>~/flux-training/helm/values.yml
replicaCount: 1

service:
  type: NodePort
  nodePort: 30771

namespace:
  name: 7-demo

labels:
  app:
    name: block-buster
    version: 7.7.1
    env: dev
EOF


curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

sleep 5

git clone https://github.com/sid-demo/bb-app-source

k taint node controlplane node-role.kubernetes.io/control-plane-

apt install tree -y