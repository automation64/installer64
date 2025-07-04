#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_TERRAFORM_METHOD='NATIVE'
export INST64_REFRESH_PACKAGE_MANAGER='NO'
sudo -E src/install-terraform
