#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_SYSOP64_TARGET="$HOME/sysop64"
export S64_CORE_PATH_ROOT="$INST64_SYSOP64_TARGET"
src/install-sysop64
