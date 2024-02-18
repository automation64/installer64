#!/usr/bin/env bash

export INST64_INSTALLER64_TARGET='/opt/inst64-test'

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_BASHLIB64_TARGET='/usr/local/lib/bl64'
export INST64_INSTALLER64_TARGET='/usr/local/lib/inst64'
sudo -E /source/install-installer64
