#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Install requirements
export PATH="${HOME}/.krew/bin:$PATH"
sudo /opt/installer64/install-kubectl &&
  /opt/installer64/install-krew ||
  exit $?

/opt/installer64/install-stern
