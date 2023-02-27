#!/bin/bash

flux create source git infra-source-git \
--url https://github.com/sidd-harth/bb-app-source \
--branch infrastructure \
--timeout 10s

flux create kustomization infra-database-kustomize-git-mysql \
--source GitRepository/infra-source-git \
--prune true \
--interval 100s \
--target-namespace database \
--path ./database 
