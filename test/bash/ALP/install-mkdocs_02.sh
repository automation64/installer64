#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

/source/install-pipx
export INST64_MKDOCS_METHOD='PIPX'
/source/install-mkdocs
