#!/usr/bin/env bash

source test/lib/check.bash
export INST64_PERL_DEVELOPMENT='YES'
export INST64_SYSTEM_WIDE='YES'
sudo -E /source/install-perl
