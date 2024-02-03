#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_SHELLCHECK_METHOD='BINARY'
sudo apt update &&
sudo apt install xz-utils
sudo -E /opt/installer64/install-shellcheck
