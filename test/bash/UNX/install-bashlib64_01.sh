#!/usr/bin/env bash

declare target="/opt/bl64"

if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

if [[ -d "$target" ]]; then
  sudo rm -rf "$target"
fi

export INST64_BASHLIB64_TARGET='/usr/local/lib/bl64'
sudo -E /source/install-bashlib64
