# IAM Design

This document outlines the IAM strategy and design for the infrastructure.

## Design Principles

### DevOps / Platform Engineer Access
**Day-to-day:**

- Terraform apply via CI
- Read logs/metrics
- Manage IAM policies
- Debugging infra

### Backend Engineers
Allowed:
- Read logs
- Deploy to staging
- View dashboards

Not Allowed:

- Direct access production database
- Infrastructure modification
- View secrets

### CI/CD System

- Environment	Permissions
- Staging	Full deploy
- Production	Deploy only after approval
