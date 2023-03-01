#!/bin/bash

flux create source git 9-demo-source-git-bb-app \
--url https://github.com/sid-demo/bb-app-source \
--branch 9-demo \
--timeout 10s

flux create kustomization 9-demo-kustomize-git-bb-app \
--source GitRepository/9-demo-source-git-bb-app \
--prune true \
--interval 10s \
--target-namespace 9-demo \
--path manifests