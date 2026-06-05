---
name: deploy-helper
description: |
  Helps deploy the application to various environments. Use this skill
  when the user asks about deployments, releases, or infrastructure.
  It can handle staging and production environments, manage rollbacks,
  and coordinate with the CI/CD pipeline. The skill should be invoked
  whenever deployment-related tasks come up, including container builds,
  registry pushes, Kubernetes rollouts, and environment configuration.
  It also handles deployment verification, health checks, and monitoring
  setup after a successful deploy.
---

# Deploy Helper

This skill manages the deployment lifecycle for the application.

## Capabilities

- Build and push Docker images
- Trigger Kubernetes deployments
- Run health checks post-deploy
- Handle rollbacks when needed
- Manage environment-specific configuration

## Workflow

When deploying, follow these steps carefully:

1. Verify the branch and commit are correct
2. Run the full test suite
3. Build the container image
4. Push to the appropriate registry
5. Apply Kubernetes manifests
6. Wait for rollout to complete
7. Run health checks
8. Notify the team

## Configuration

The deployment config lives at deploy/config.yaml. Each environment
has its own overlay in deploy/overlays/.

Try to use the existing deployment scripts where possible. Consider
using the blue-green strategy for production deploys. You might want
to check the current pod status before starting.

## Rollback

If something goes wrong, it would be good to roll back immediately.
Perhaps check the previous deployment's health before deciding.
Ideally, rollbacks should complete within 2 minutes.

[Insert deployment checklist here]
