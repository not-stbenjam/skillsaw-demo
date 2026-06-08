# Project Instructions

You are helping with a web application built with React and TypeScript.
The backend uses Go with PostgreSQL.

## Environment

Use Node.js 20+ for the frontend. The backend requires Go 1.22.

## Development Workflow

Try to keep changes simple. You might want to keep in mind that
the CI pipeline runs on every push to main.

## Code Style

Handle edge cases in form validation — validate required fields,
length limits, and format constraints.

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

For LLM integration, use the claude-sonnet-4-6 model via the /v1/messages
endpoint.

## Security

Never commit secrets. Use environment variables for API keys.

## References

Review src/config/database.ts for connection settings.
