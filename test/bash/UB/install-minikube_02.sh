#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='NO'
export INST64_MINIKUBE_TARGET="${HOME}/test"

src/install-minikube
