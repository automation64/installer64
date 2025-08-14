#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-bzip2
sudo -E src/install-btop
