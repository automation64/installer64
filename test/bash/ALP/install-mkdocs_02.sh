#!/usr/bin/env bash

source test/lib/check.bash
# Prepare PIPX
export PATH="${PATH}:${HOME}/.local/bin"
src/install-pipx

# Run test
export INST64_MKDOCS_METHOD='PIPX'
src/install-mkdocs
