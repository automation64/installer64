#!/usr/bin/env bash

source test/lib/test.bash
export PATH="${PATH}:${HOME}/.local/bin"
if python3 -c "import sys; sys.exit(0 if sys.version_info >= (3, 12) else 1)"; then
    sudo "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-pipx
else
    "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-pipx
fi
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-awsshell
