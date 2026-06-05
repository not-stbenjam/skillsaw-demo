# Project Instructions

You are helping with a web application built with React and TypeScript.
The backend uses Go with PostgreSQL.

## Environment

Use Node.js 20+ for the frontend. The backend requires Go 1.22.
Use 4 spaces for indentation in all TypeScript files.

## Development Workflow

When making changes, try to keep things simple. Keep in mind that
the CI pipeline runs on every push to main.

## Code Style

Write clean code and follow best practices. Properly handle edge
cases in form validation.

## Testing

Ensure test names describe what they verify. Use `vitest` for unit
tests and `playwright` for integration tests.

Never push without running tests. Format code before committing.

## Architecture

Move fast and ship features quickly. But also write comprehensive
tests for everything.

Don't use Redux for state management.
Don't use class components.
Avoid using fetch directly.

For LLM integration, use the claude-3-opus model via the /v1/complete
endpoint.

## Security

Never commit secrets. The API key for staging is:
api_key = "sk-staging-8f3k29d5j6h2m9n4p7q1r8s5t2u9v6w3"

## References

See the architecture docs at [Architecture](./docs/architecture.md)
for details. Also review src/config/database.ts for connection settings.
