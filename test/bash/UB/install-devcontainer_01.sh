#!/usr/bin/env bash

PROJECT="$(pwd)"
export INST64_ANSIBLELINT_PIPX="OFF"

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-nodejs ||
  return $?
export INST64_SYSTEM_WIDE='NO'
cd "$HOME" &&
  "$PROJECT/src/install-devcontainer"
