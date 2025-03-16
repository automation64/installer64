#!/usr/bin/env bash

export INST64_ANSIBLELINT_PIPX="OFF"

source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-nodejs ||
  return $?
cd $HOME &&
  src/install-devcontainer
