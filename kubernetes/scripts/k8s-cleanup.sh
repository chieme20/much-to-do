#!/bin/bash
# This script removes everything when you're done testing
echo "Cleaning up Kubernetes resources..."
kubectl delete -f kubernetes/backend/
kubectl delete -f kubernetes/mongodb/
kubectl delete -f kubernetes/ingress.yaml