#!/bin/bash


CLUSTERIP=$(kubectl -n minio-dev get svc minio -o json | jq .spec.clusterIP -r)

mc alias set myminio http://$CLUSTERIP:9000 minioadmin minioadmin

mc mb myminio/bucket-bb-app

mc cp ~/bb-app-source/manifests/ myminio/bucket-bb-app/manifests -r
