#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
export S64_CORE_PATH_BL64="$INST64_BASHLIB64"

_lib_test_sys_remove_so64
src/install-sysop64
