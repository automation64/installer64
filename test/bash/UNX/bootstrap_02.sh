#!/usr/bin/env bash

source test/lib/test.bash

# Reset environment
unset INST64_BASHLIB64
unset INST64_LIB_PATH
unset BL64_LIB_CICD

_lib_test_home_remove_at64
_lib_test_sys_remove_inst64
_lib_test_sys_remove_bl64

./src/bootstrap USER

