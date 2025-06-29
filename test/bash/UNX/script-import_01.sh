#!/usr/bin/env bash

source test/lib/test.bash

declare INST64_BASHLIB64="${INST64_BASHLIB64:-/opt/bl64}"
[[ ! -d "$INST64_BASHLIB64" && -d "${HOME}/at64" ]] && INST64_BASHLIB64="${HOME}/at64"

source "${INST64_BASHLIB64}/bashlib64-core.bash"
