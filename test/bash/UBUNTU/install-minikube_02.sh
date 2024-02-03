#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_MINIKUBE_SYSTEM_WIDE='NO'
export INST64_MINIKUBE_TARGET="${HOME}/test"

/opt/installer64/install-minikube
