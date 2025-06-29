#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_GHCLI_METHOD='BINARY'
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-ghcli
