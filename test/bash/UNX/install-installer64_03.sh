#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
export INST64_INSTALLER64_TARGET="$HOME/myinst64"
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-installer64
