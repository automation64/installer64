#!/usr/bin/env bash

export INST64_INSTALLER64_TARGET='/opt/inst64-test'

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_REPLACE_INSTALLED='YES'
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-installer64
