#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE=NO
export INST64_DEVBIN64_TARGET="$HOME/devbin64"
src/install-devbin64
