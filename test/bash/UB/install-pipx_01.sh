#!/usr/bin/env bash

# Warning: requires python 3.12
source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
if python3 -c "import sys; sys.exit(0 if sys.version_info >= (3, 12) else 1)"; then
    sudo src/install-pipx
else
    src/install-pipx
fi
