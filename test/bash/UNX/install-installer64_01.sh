#!/usr/bin/env bash

export INST64_INSTALLER64_TARGET='/opt/inst64-test'

source test/lib/check.bash
export INST64_BASHLIB64_TARGET='/usr/local/lib/bl64'
export INST64_INSTALLER64_TARGET='/usr/local/lib/inst64'
sudo -E src/install-installer64
