# Agent Guidelines

When working with agents in this repository, follow these guidelines.

## Repository Structure

The codebase is organized into several directories:
- `src/` — Application source code
- `tests/` — Test files
- `deploy/` — Deployment configuration
- `docs/` — Documentation

## Working with Files

When editing files in the repository, use the standard patterns
established in the codebase. Check the folder structure before
creating new directories.

## Pull Requests

Create a PR for each logical change. Include a description of what
changed and why. Link to the relevant Jira ticket if applicable.

## Functions and Methods

Use standalone functions for utility code. Prefer pure functions
where possible. Methods should be used only on class instances.
