#!/usr/bin/env bash

# Warning: requires python 3.12
source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
if python3 -c "import sys; sys.exit(0 if sys.version_info >= (3, 12) else 1)"; then
    sudo "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-pipx
else
    "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-pipx
fi
