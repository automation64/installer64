#!/usr/bin/env bash

declare target="/opt/installer64"

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

if [[ -d "$target" ]]; then
  sudo rm -rf "$target"
fi

sudo /opt/installer64/install-installer64
