#!/bin/bash
# This script automates the deployment to your cluster
echo "Deploying resources to Kubernetes..."
kubectl apply -f kubernetes/mongodb/
kubectl apply -f kubernetes/backend/
kubectl apply -f kubernetes/ingress.yaml