SHELL=/bin/bash

.PHONY: changelog release

VERSION := $(shell git describe --tags --always)
NEXT_GIT_TAG := $(shell semtag final -s minor -o)

changelog:
	git-chglog -o CHANGELOG.md --next-tag $(NEXT_GIT_TAG)

release:
	semtag final -s minor
