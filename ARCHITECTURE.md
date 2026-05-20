```markdown
# System Architecture Documentation

This document describes the high-availability infrastructure layout hosting the StartTech application ecosystem.

## High-Level Infrastructure Topology
[Internet Web Users]
│
├──► (Static Assets) ──► [AWS CloudFront CDN] ──► [Amazon S3 Bucket]
│
└──► (API Queries) ────► [Application Load Balancer]
│
▼ (Port 8080 Routing)
[Auto Scaling Group]
├── [EC2 Worker Node 1]
└── [EC2 Worker Node 2]
│
├──► [Redis ElastiCache Cluster]
└──► [MongoDB Atlas Datastore]

## 🛰️ Components and Traffic Traversal
1. **Edge Delivery Network**: Static client-side layout structures are housed inside Amazon S3 storage blocks and dynamically accelerated globally using an AWS CloudFront CDN distribution matrix.
2. **Compute and Traffic Routing**: Dynamic platform interaction travels through an Internet-Facing Application Load Balancer (ALB). The ALB routes standard incoming requests across an AWS Auto Scaling Group (ASG) maintaining scalable EC2 infrastructure instances.
3. **Application Stack Engine**: Backend workers manage dynamic traffic processes inside specialized isolated Docker containers exposing internal port `8080`.
4. **Caching & Persistence Layers**: High-speed ephemeral system state memory is accelerated using an AWS ElastiCache Redis setup, while platform records securely synchronize with an external MongoDB Atlas cluster database.