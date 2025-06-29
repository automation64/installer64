#!/usr/bin/env bash

declare bats_core_dir="/opt/bats-core"
declare bats_file="/usr/local/bin/bats"

source test/lib/test.bash
if [[ -d "$bats_core_dir" ]]; then
  sudo rm -rf "$bats_core_dir"
fi

if [[ -L "$bats_file" ]]; then
  sudo rm "$bats_file"
fi

export INST64_SYSTEM_WIDE='YES'
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-batscore
