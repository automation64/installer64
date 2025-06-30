#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
export SYSDEN64_PATH_BL64="$INST64_BASHLIB64"
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-sysden64
