#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Install requirements
export PATH="${HOME}/.krew/bin:$PATH"
sudo ${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-kubectl &&
  ${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-krew ||
  exit $?

${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-ksniff
