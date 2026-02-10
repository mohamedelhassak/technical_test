# CI/CD Design

This document outlines the CI/CD pipeline strategy and design.

## Pipeline Stages

### Pipeline workflow
```
PR → Tests → build → Merge to develop branch → Deploy to staging → merge to main branch → Manual Approval → deploy to Production
```

### Rollback Strategy

- Revert commit
- Redeploy previous version

### Visibility & Accessibility
- Only CICD deployments
- Staging deploys automatically on PR merge; engineers have broader debugging access.

- Production deploys require manual approval and scoped CI/CD roles.

- CICD Dashboards and notifications give CTO/teams full visibility into what is deployed and when.
