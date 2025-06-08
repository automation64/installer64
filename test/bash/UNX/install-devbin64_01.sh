#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_REPLACE_INSTALLED='YES'
src/install-installer64
src/install-devbin64
