#!/usr/bin/env bash

source test/lib/test.bash
# Fake ZSH to by-pass installer pre-req check
sudo touch /bin/zsh
sudo chmod 755 /bin/zsh

export INST64_SYSTEM_WIDE=NO
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-ohmyzsh
