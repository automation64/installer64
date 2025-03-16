#!/usr/bin/env bash

source test/lib/check.bash
# Install requirements
export PATH="${HOME}/.krew/bin:$PATH"
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-kubectl &&
  src/install-krew ||
  exit $?

src/install-kubepug
