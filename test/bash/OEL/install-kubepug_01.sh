#!/usr/bin/env bash

source test/lib/test.bash
# Install requirements
export PATH="${HOME}/.krew/bin:$PATH"
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-kubectl
export INST64_SYSTEM_WIDE='NO'
src/install-krew

src/install-kubepug
