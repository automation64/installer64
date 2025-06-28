#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_REPLACE_INSTALLED='YES'

rm -Rf $HOME/at64 2> /dev/null
sudo rm -Rf /root/at64 2> /dev/null
sudo -E src/install-installer64
sudo -E src/install-sysden64
