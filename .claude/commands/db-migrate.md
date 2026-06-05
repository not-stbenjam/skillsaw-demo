---
description: Run database migrations against the target environment
---

# Database Migration

Run pending database migrations. This command handles both forward
migrations and rollbacks.

## Usage

Specify the target environment (dev, staging, production) and the
migration direction (up or down).

## Implementation

1. Check connectivity to the database
2. Run `go run cmd/migrate/main.go` with the appropriate flags
3. Verify migration status with `go run cmd/migrate/main.go status`

If possible, run migrations during low-traffic windows. You should
probably coordinate with the on-call engineer for production runs.
