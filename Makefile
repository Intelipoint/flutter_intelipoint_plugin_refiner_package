SHELL := /bin/bash
.PHONY: build-apk

# CI Tests
ci-tests:
	dart format --set-exit-if-changed . -l 120
	flutter analyze --no-pub
	# flutter test -r expanded

# Format code:
format-code:
	dart format . -l 120
	flutter pub run import_path_converter:main

# Restart adb service
adb-restart:
	adb kill-server
	adb start-server

clean:
	flutter clean
	flutter pub get

cache-repair:
	flutter pub cache repair
	make clean

apply-lint:
	dart fix --dry-run
	dart fix --apply
