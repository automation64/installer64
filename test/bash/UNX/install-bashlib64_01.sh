#!/usr/bin/env bash

declare target="/opt/bl64"

source test/lib/check.bash

if [[ -d "$target" ]]; then
  sudo rm -rf "$target"
fi

export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-bashlib64
