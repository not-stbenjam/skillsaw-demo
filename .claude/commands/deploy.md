Deploy the application to the specified environment.

Check the current branch, run tests, build the Docker image, and push
to the container registry. Then trigger the deployment pipeline.

Make sure all tests pass before proceeding. If any tests fail, stop
and report the failures.

## Steps

1. Verify you're on the correct branch
2. Run `npm test` and `go test ./...`
3. Build with `docker build -t app:latest .`
4. Push to registry
5. Trigger deployment via `kubectl rollout restart`

## Notes

TODO: Add support for canary deployments.
FIXME: The rollback procedure needs to be documented.
