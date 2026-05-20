# StartTech Full-Stack Application (`much-to-do`)

This repository contains the core application code for the StartTech production platform. It consists of a decoupled architecture utilizing a modern single-page frontend application and a robust containerized backend API layer.

## Repository Structure
* `/frontend`: React client bundle optimized with Vite.
* `/backend`: Golang production API serving system traffic.
* `/scripts`: Dedicated shell utilities for administrative tasks and infrastructure maintenance.
* `/.github/workflows`: Fully integrated continuous integration and deployment pipelines.

##  Local Quickstart
To initialize components locally for exploratory testing:

### Frontend Setup
```bash
cd frontend
npm install
npm run dev

cd backend
go mod download
go run cmd/api/main.go