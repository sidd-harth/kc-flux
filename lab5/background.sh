#!/bin/bash

echo PS1='"\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\$\[\033[0;37m\] "' >> ~/.bashrc

source ~/.bashrc

mkdir -p ~/flux-training/helm
touch ~/flux-training/helm/values.yml

cat <<EOF >>~/flux-training/helm/values.yml
replicaCount: 1

service:
  type: NodePort
  nodePort: 30006

namespace:
  name: 6-demo
  
labels:
  app:
    name: block-buster
    version: 7.6.0
    env: dev
EOF


curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

sleep 5

git clone https://github.com/sid-demo/bb-app-source

k taint node controlplane node-role.kubernetes.io/control-plane-

apt install tree -y