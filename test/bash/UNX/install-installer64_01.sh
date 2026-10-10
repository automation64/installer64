#!/usr/bin/env bash

export INST64_INSTALLER64_TARGET='/opt/inst64-test'

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_INSTALL_REPLACE='YES'
sudo -E src/install-installer64
