#!/usr/bin/env bash

export INST64_ANSIBLE_PIPX="OFF"

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Prepare PIPX
export PATH="${PATH}:${HOME}/.local/bin"
/source/install-pipx

# Run test
export INST64_PGADMIN_METHOD='PIPX'
/source/install-pgadmin
