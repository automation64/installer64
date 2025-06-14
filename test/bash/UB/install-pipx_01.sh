#!/usr/bin/env bash

# Warning: requires python 3.12
source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-pipx
