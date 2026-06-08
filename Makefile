SKILLSAW_VERSION := 0.11.5
CONTAINER_ENGINE ?= $(shell command -v podman 2>/dev/null || echo docker)

.PHONY: lint lint-fix
lint:
	$(CONTAINER_ENGINE) run --rm -v $$(pwd):/workspace:Z ghcr.io/stbenjam/skillsaw:v$(SKILLSAW_VERSION) --strict

lint-fix:
	$(CONTAINER_ENGINE) run --rm -v $$(pwd):/workspace:Z ghcr.io/stbenjam/skillsaw:v$(SKILLSAW_VERSION) fix
