#!/bin/bash
echo "ALERT: Initiating application rollback deployment..."
echo "Reverting backend services to previous stable image container..."
aws autoscaling start-instance-refresh \
  --auto-scaling-group-name "starttech-backend-asg" \
  --strategy "Rolling"
echo "Rollback trigger sequence dispatched to AWS."