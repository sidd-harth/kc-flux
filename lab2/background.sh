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

curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

git clone https://github.com/sid-demo/bb-app-source