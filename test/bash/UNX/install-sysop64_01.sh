#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_SYSOP64_TARGET="$HOME/sysop64"
src/install-sysop64
