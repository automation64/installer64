#!/usr/bin/env bash

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_SHELLCHECK_METHOD='BINARY'
sudo -E /opt/installer64/install-shellcheck
