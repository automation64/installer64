#!/usr/bin/env bash
source test/lib/test.bash

# With no $HOME/.local
# With custom target

export INST64_SYSTEM_WIDE='NO'
export INST64_X_APP_NAME_CAPS_X_TARGET="${HOME}/custom-target"

_lib_test_home_remove_local

./test/lib/template-custom_01.bash
