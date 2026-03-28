#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE='NO'
export INST64_COSIGN_TARGET="${HOME}/test"

src/install-cosign
