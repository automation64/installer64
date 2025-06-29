#!/usr/bin/env bash
source test/lib/test.bash

export INST64_SYSTEM_WIDE='YES'

sudo -E ./test/lib/template-custom_01.bash
