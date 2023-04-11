#!/bin/bash

# not used, done in 5.sh

flux create source git infra-source-git \
--url https://github.com/sidd-harth/bb-app-source \
--branch infrastructure \
--timeout 10s \
--export > ~/block-buster/flux-clusters/dev-cluster/infra-source-git.yml

flux create kustomization infra-database-kustomize-git-mysql \
--source GitRepository/infra-source-git \
--prune true \
--interval 100s \
--target-namespace database \
--path ./database  \
--export > ~/block-buster/flux-clusters/dev-cluster/infra-database-kustomize-git-mysql.yml
