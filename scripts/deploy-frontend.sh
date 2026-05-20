#!/bin/bash
echo "Starting Manual Frontend Deployment..."
cd frontend
npm install
npm run build
echo "Syncing static assets to AWS S3..."
aws s3 sync dist/ s3://$AWS_S3_BUCKET_NAME --delete
echo "Frontend deployment completed!"