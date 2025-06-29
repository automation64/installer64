#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE='NO'
export INST64_KUBECTL_TARGET="${HOME}/test"

"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-kubectl
