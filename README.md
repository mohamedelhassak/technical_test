# Terraform Technical Test

This repository contains the Terraform config files

## Overview

This repository provides a minimal secure infrastructure design for a B2B SaaS platform using:

- AWS
- Terraform
- ECS
- RDS PostgreSQL
- Redis

## Project Structure

```
terraform
├─ environments
│  ├─ production
│  │  ├─ backend.tf
│  │  └─ main.tf
│  └─ staging
│     ├─ backend.tf
│     └─ main.tf
├─ modules
│  ├─ ecs_service
│  ├─ iam
│  ├─ network
│  ├─ rds_postgres
│  └─ redis
├─ main.tf
├─ CI_CD_DESIGN.md
├─ IAM_DESIGN.md
├─ README.md
└─ SECURITY_NOTES.md
```

## Links to related docs

- [CI/CD Design](CI_CD_DESIGN.md)
- [IAM Design](IAM_DESIGN.md)
- [Security Notes](SECURITY_NOTES.md)

With More Time I Would Add zero down time deployment strategy (blue-green, canary deploy, ect...)

**THANKS FOR READING**
