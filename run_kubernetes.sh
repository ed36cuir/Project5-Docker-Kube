#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

echo ' Step 1 '
# This is your Docker ID/path
dockerpath=ed36cuir/predict-data:0.1

echo ' Step 2 '
echo 'Run the Docker Hub container with kubernetes'
kubectl run kube-predict --image=docker.io/ed36cuir/predict-data:0.1 --port=8000


echo ' Step 3 '
echo 'List kubernetes pods'
kubectl get pods

echo ' Step 4 '
echo 'Forward the container port to a host'
kubectl port-forward pod/kube-predict 8000:80
