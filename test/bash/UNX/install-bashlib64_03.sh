#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
export INST64_BASHLIB64_TARGET="$HOME/mybl64"
src/install-bashlib64
