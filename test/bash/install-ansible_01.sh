#!/bin/sh

export INST64_ANSIBLE_PIPX="OFF"

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

/opt/installer64/install-ansible
