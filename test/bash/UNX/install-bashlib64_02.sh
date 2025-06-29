#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-bashlib64
