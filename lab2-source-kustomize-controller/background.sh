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

sleep 120
curl -s https://fluxcd.io/install.sh | sudo bash