#!/usr/bin/env bash
source test/lib/test.bash

# With no $HOME/.local

export INST64_SYSTEM_WIDE='NO'

_lib_test_home_remove_local

./test/lib/template-custom_01.bash
