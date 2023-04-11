#!/bin/bash

echo PS1='"\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\$\[\033[0;37m\] "' >> ~/.bashrc

source ~/.bashrc


curl -s https://fluxcd.io/install.sh | sudo bash

. <(flux completion bash)

cat <<EOF >>~/secret-mysql.yml
apiVersion: v1
kind: Secret
metadata:
  name: secret-mysql
  namespace: database
stringData:
  password: mysql-password-0123456789
EOF


#git clone https://github.com/sid-demo/bb-app-source

kubectl taint node controlplane node-role.kubernetes.io/control-plane-
