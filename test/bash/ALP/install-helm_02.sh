#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='NO'
export INST64_HELM_TARGET="${HOME}/test"

/source/install-helm
