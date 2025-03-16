#!/usr/bin/env bash

declare target="/opt/bl64"

source test/lib/check.bash

if [[ -d "$target" ]]; then
  sudo rm -rf "$target"
fi

export INST64_BASHLIB64_TARGET='/usr/local/lib/bl64'
sudo -E /source/install-bashlib64
