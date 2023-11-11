#!/usr/bin/env bash

export INST64_INSTALLER64_TARGET='/opt/inst64-test'

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

sudo -E /opt/installer64/install-installer64
