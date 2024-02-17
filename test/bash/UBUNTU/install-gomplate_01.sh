#!/usr/bin/env bash

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

sudo ${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-gomplate
