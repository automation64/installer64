#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
export INST64_INSTALLER64_TARGET="$HOME/myinst64"
src/install-installer64
