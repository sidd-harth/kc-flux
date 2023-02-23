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

curl -s https://fluxcd.io/install.sh | sudo bash

sleep 2

git clone https://github.com/sid-demo/bb-app-source