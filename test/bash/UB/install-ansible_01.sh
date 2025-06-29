#!/usr/bin/env bash

export INST64_ANSIBLE_PIPX="OFF"

source test/lib/test.bash
"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-ansible
