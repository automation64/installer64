#!/usr/bin/env bash

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Install requirements
sudo /opt/installer64/install-kubectl &&
  /opt/installer64/install-krew ||
  exit $?

bash --login /opt/installer64/install-popeye
