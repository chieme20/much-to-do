#!/bin/bash
echo "Checking API endpoint health..."
STATUS=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:8080/health)

if [ "$STATUS" -eq 200 ]; then
  echo "Service is HEALTHY (Status 200)"
  exit 0
else
  echo " ervice is UNHEALTHY (Status $STATUS)"
  exit 1
fi