#!/usr/bin/env bash

export INST64_ANSIBLE_PIPX="OFF"

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-ansible
