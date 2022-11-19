%: %.sh  # Disable this implicit rule
.DEFAULT_GOAL := all

.PHONY: all
all: tests

.PHONY: tests
tests:
	pytest

.PHONY: generate-requirements
generate-requirements:
	pip-compile --generate-hashes requirements.in
	pip-compile --generate-hashes requirements-dev.in

.PHONY: install-dev-environments
install-dev-environments:
	pip install -r requirements.txt -r requirements-dev.txt
	pip install -e .
