# Security Notes

This document contains security considerations and best practices for the infrastructure.

## Secrets Management

- Secrets stored in: **AWS Secrets Manager**

- Apps retrieve secrets using IAM roles

- Humans: cannot read secrets directly

- Rotation secret will be automated

## Production db Access

| Role     | Access             |
|----------|------------------|
| DevOps Engineer   | read only   |
| App Engineers| readonly         |
| CICD| No access       |

## Debugging Workflow

- Engineer requests access

- DevOps creates temporary  read only credential
