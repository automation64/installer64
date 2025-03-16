#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_GHCLI_METHOD='BINARY'
sudo -E /source/install-ghcli
