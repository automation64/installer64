#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Install requirements
export PATH="${HOME}/.krew/bin:$PATH"
sudo /source/install-kubectl &&
  /source/install-krew ||
  exit $?

/source/install-ksniff
