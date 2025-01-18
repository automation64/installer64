#!/usr/bin/env bash

export INST64_ANSIBLELINT_PIPX="OFF"

if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

/source/install-devcontainer
