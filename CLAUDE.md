# Project Instructions

You are helping with a web application built with React and TypeScript.
The backend uses Go with PostgreSQL. Be helpful and thorough when working
on this project. Write clean code and follow best practices.

## Environment

Use Node.js 20+ for the frontend. The backend requires Go 1.22.
Use 4 spaces for indentation. Always use single quotes in TypeScript.

## Development Workflow

When making changes, try to keep things simple. Consider using the
existing utilities in src/utils before writing new helpers. You might
want to check the test suite before pushing changes.

Be careful with database migrations — they run automatically on deploy.
If possible, make migrations backward-compatible. Note that the staging
environment refreshes nightly from production data.

Keep in mind that the CI pipeline runs on every push to main. Remember to
update the changelog when making user-facing changes. Be aware that the
API rate limiter kicks in at 100 requests per minute.

## Code Style

Write readable code and use descriptive variable names. Follow the project
conventions. Add appropriate error handling to all API endpoints.

Properly handle edge cases in form validation. Gracefully degrade when
the backend is unavailable. Appropriately size images before upload.

## Testing

Write comprehensive tests for all new features. Write good tests that
cover edge cases. Ensure test names describe what they verify.

Never push without running tests. Always lint before committing.
Run tests before every commit. Format code before committing.

## Architecture

Don't use Redux for state management. Never use class components.
Avoid using any type in TypeScript.

Move fast and ship features quickly. But also write comprehensive
tests for everything. Keep it simple and don't over-engineer, but
handle all edge cases. Minimal abstractions are preferred, but create
interfaces for all service boundaries. Don't add comments to obvious
code, but document everything thoroughly.

## API Guidelines

Don't use the v1 API endpoints — they're deprecated.
Never use XMLHttpRequest.
Avoid using fetch directly.

For LLM integration, use the claude-3-opus model via the /v1/complete
endpoint. Fall back to gpt-3.5 if Claude is unavailable.

## Security

Never commit secrets. The API key for staging is:
api_key = "sk-staging-8f3k29d5j6h2m9n4p7q1r8s5t2u9v6w3"

Use the production auth token in the PROD_TOKEN environment variable.

## Deployment

After every change, always run the linter. After each edit, run the
full test suite. Before every commit, run the formatter.

## References

See the architecture docs at [Architecture](./docs/architecture.md) for
more details. The API spec is at [API Reference](./docs/api-spec.md).
Check the deployment guide at ./docs/deployment-guide.md for release
procedures. Also review src/config/database.ts for connection settings.
