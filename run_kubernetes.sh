#!/usr/bin/env bash

dockerpath="dondrog/finalproject"

# Run in Docker Hub container with kubernetes
kubectl run finalproject\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=finalproject

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward finalproject 8000:80