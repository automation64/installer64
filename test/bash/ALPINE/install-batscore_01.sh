#!/usr/bin/env bash

declare bats_core_dir="/opt/bats-core"
declare bats_file="/usr/local/bin/bats"

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

if [[ -d "$bats_core_dir" ]]; then
  sudo rm -rf "$bats_core_dir"
fi

if [[ -L "$bats_file" ]]; then
  sudo rm "$bats_file"
fi

sudo ${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-batscore
