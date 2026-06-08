---
description: Deploy the application to the specified environment
---
Deploy the application to the specified environment.

Check the current branch, run tests, build the Docker image, and push
to the container registry. Then trigger the deployment pipeline.

## Steps

1. Run `npm test` and `go test ./...`
2. Build with `docker build -t app:latest .`
3. Push to registry and trigger `kubectl rollout restart`
