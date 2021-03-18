#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=macvox380/5036d2281b6b

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run 5036d2281b6b \
#    --image=$dockerpath --port=8000

kubectl run 5036d2281b6b\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=8000


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward api 8000:80

