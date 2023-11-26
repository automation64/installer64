#!/usr/bin/env bash

export INST64_ANSIBLELINT_PIPX="OFF"

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

/opt/installer64/install-ansiblelint
