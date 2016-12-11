export PATH := $(shell npm bin):$(PATH)
SHELL := /bin/bash

.PHONY: test release

test:
	mocha

release:
	npm version minor || exit 1
	npm publish || exit 1
	git push origin master --tags
