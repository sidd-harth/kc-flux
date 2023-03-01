#!/bin/bash

flux create kustomization infra-security-kustomize-git-sealed-secrets \
--source GitRepository/infra-source-git \
--prune true \
--interval 1h \
--path ./bitnami-sealed-secrets 

flux create kustomization infra-security-kustomize-git-sealed-secrets \
--source GitRepository/infra-source-git \
--prune true \
--interval 1h \
--path ./bitnami-sealed-secrets  \
--export > `~/block-buster/flux-clusters/dev-cluster/infra-security-kustomize-git-sealed-secrets.yml