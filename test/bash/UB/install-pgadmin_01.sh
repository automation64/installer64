#!/usr/bin/env bash

source test/lib/check.bash
# Prepare PIPX
export PATH="${PATH}:${HOME}/.local/bin"
if python3 -c "import sys; sys.exit(0 if sys.version_info >= (3, 12) else 1)"; then
    sudo src/install-pipx
else
    src/install-pipx
fi

# Run test
export INST64_PGADMIN_METHOD='PIPX'
src/install-pgadmin
