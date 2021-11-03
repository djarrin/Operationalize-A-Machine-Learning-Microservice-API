#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=djarrin/operationalize-a-machine-learning-microservice-api

# Step 2
# Run the Docker Hub container with kubernetes
# https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#run
kubectl run prediction-api --image=$dockerpath

# Step 3:
# List kubernetes pods
# https://kubernetes.io/docs/tasks/access-application-cluster/list-all-running-container-images/
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
# https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/#forward-a-local-port-to-a-port-on-the-pod
kubectl port-forward prediction-api 8000:80
