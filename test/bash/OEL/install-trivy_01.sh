#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-trivy
