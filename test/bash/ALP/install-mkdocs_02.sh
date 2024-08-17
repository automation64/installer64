#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Prepare PIPX
export PATH="$PATH:/home/$HOME/.local/bin"
/source/install-pipx

# Run test
export INST64_MKDOCS_METHOD='PIPX'
/source/install-mkdocs
