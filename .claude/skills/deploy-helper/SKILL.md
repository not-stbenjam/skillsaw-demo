---
name: deploy-helper
description: Helps deploy the application to various environments
---

# Deploy Helper

This skill manages the deployment lifecycle for the application.

## Workflow

1. Verify the branch and commit
2. Run the full test suite
3. Build the container image with `docker build`
4. Push to the registry
5. Apply Kubernetes manifests with `kubectl apply`
6. Run health checks

## Configuration

The deployment config lives at deploy/config.yaml.

Use the existing deployment scripts in `deploy/scripts/`.