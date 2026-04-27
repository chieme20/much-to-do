# MuchTodo Containerization & Kubernetes Deployment

## Project Overview
This project containerizes a Golang backend API and a MongoDB database, deploying them to a local Kubernetes cluster.

## Features
- **Multi-stage Dockerfile**: Optimized for size and security.
- **Docker Compose**: Orchestrates local development with persistent volumes.
- **Kubernetes Manifests**: Includes Deployments, Services, ConfigMaps, Secrets, and Ingress.
- **Automation Scripts**: Easy-to-use shell scripts for building and deploying.

## How to Run

### 1. Docker Setup
To build and run the application using Docker Compose:
```bash
./scripts/docker-build.sh
./scripts/docker-run.sh

### 2. Kubernetes Deployment
To deploy the application to your local cluster:
./scripts/k8s-deploy.sh

