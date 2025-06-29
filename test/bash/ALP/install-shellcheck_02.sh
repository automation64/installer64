#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SHELLCHECK_METHOD='BINARY'
sudo apt update &&
sudo apt install xz-utils
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-shellcheck
