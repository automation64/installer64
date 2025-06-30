#!/usr/bin/env bash

source test/lib/test.bash
# Install requirements
export PATH="${HOME}/.krew/bin:$PATH"
export INST64_SYSTEM_WIDE='YES'
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-kubectl
export INST64_SYSTEM_WIDE='NO'
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-krew

"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-kubepug
