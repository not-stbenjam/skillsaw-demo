---
globs: ["src/api/**/*.ts", "src/routes/**/*.ts"]
description: API route conventions for the backend
---

All API routes must follow RESTful conventions. Use plural nouns for
resource endpoints. Return appropriate HTTP status codes.

Validate all request bodies using zod schemas. Never trust client
input without validation.

Use the standard error response format defined in src/types/errors.ts.
