#!/bin/bash

flux suspend hr sealed-secrets

flux suspend kustomization 2-demo-kustomize-git-bb-app  

flux suspend hr 6-demo-helm-release-bb-app

kubectl -n 2-demo delete deploy --all

kubectl -n 6-demo delete deploy --all

kubectl create ns monitoring

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm install -f ~/values.yml my-kube-prometheus-stack prometheus-community/kube-prometheus-stack --version 35.3.0 -n monitoring

kubectl -n monitoring patch svc my-kube-prometheus-stack-grafana -p '{"spec": {"ports": [{"port": 80,"targetPort": 3000,"name": "http-web","protocol":"TCP","nodePort":30101}],"type": "NodePort"}}'

kubectl -n monitoring patch svc my-kube-prometheus-stack-prometheus -p '{"spec": {"ports": [{"port": 9090,"targetPort": 9090,"name": "http-web","protocol":"TCP","nodePort":30202}],"type": "NodePort"}}'