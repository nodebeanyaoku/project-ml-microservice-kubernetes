#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub


# This is your Docker ID/path
dockerpath=nodebe/mlproject

# Step 2
# Run the Docker Hub container with kubernetes
echo "Docker ID and Image: $dockerpath"
kubectl create deploy mlproject --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/mlproject-657f7b8678-6mfzt --address 0.0.0.0 8000:80

