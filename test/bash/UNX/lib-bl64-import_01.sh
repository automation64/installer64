#!/usr/bin/env bash

source test/lib/test.bash

source "${INST64_BASHLIB64}/bashlib64-module-txt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fmt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-rnd.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-iam.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" || exit 1

source "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/lib-bl64"
