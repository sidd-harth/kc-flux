#!/bin/bash

echo PS1='"\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\$\[\033[0;37m\] "' >> ~/.bashrc

source ~/.bashrc


curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

sleep 5

k taint node controlplane node-role.kubernetes.io/control-plane-

apt install tree -y