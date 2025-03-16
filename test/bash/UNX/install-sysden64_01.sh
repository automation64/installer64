#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_SYSDEN64_TARGET="$HOME/sysden64"
export SYSDEN64_PATH_ROOT="$INST64_SYSDEN64_TARGET"
src/install-sysden64
