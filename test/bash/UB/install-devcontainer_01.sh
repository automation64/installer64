#!/usr/bin/env bash

PROJECT="$(pwd)"
export INST64_ANSIBLELINT_PIPX="OFF"

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-nodejs ||
  return $?
export INST64_SYSTEM_WIDE='NO'
cd "$HOME" &&
  "$PROJECT/"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-devcontainer"
