#!/usr/bin/env bash

source test/lib/check.bash
# Prepare PIPX
export PATH="${PATH}:${HOME}/.local/bin"
src/install-pipx

# Run test
export INST64_PGADMIN_METHOD='PIPX'
src/install-pgadmin
