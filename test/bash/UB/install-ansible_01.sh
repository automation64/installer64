#!/usr/bin/env bash

export INST64_ANSIBLE_METHOD="PIPX"

source test/lib/test.bash
if python3 -c "import sys; sys.exit(0 if sys.version_info >= (3, 12) else 1)"; then
    sudo src/install-pipx
else
    src/install-pipx
fi

src/install-ansible
