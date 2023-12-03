#!/usr/bin/env bash

declare target="/opt/bl64"

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

if [[ -d "$target" ]]; then
  sudo rm -rf "$target"
fi

export INST64_BASHLIB64_TARGET=/usr/local/lib/bl64
sudo -E /opt/installer64/install-bashlib64
