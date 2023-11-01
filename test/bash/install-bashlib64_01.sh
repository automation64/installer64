#!/usr/bin/env bash

declare directory="/opt/bl64"

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

if [[ -d "$directory" ]]; then
  sudo rm -rf "$directory"
fi

sudo /opt/installer64/install-bashlib64
