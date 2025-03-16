#!/usr/bin/env bash

export INST64_ANSIBLE_PIPX="OFF"

source test/lib/check.bash
# Prepare PIPX
export PATH="${PATH}:${HOME}/.local/bin"
/source/install-pipx

# Run test
export INST64_PGADMIN_METHOD='PIPX'
/source/install-pgadmin
