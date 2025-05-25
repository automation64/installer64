#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
if [[ -d $HOME/at64 ]]; then
    rm -Rf $HOME/at64
fi
sudo -E src/install-installer64
sudo -E src/install-devbin64
