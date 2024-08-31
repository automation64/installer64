#!/usr/bin/env bash

if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_COSIGN_SYSTEM_WIDE='NO'
export INST64_COSIGN_TARGET="${HOME}/test"

/source/install-cosign
