#!/usr/bin/env bash

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_HELM_SYSTEM_WIDE='NO'
export INST64_HELM_TARGET="${HOME}/test"

/opt/installer64/install-helm
