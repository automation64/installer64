#!/usr/bin/env bash
source test/lib/test.bash

# With already existing $HOME/.local

export INST64_SYSTEM_WIDE='NO'

./test/lib/template-custom_01.bash
