#!/usr/bin/env bash

source test/lib/check.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_TERRAFORM_METHOD='NATIVE'
sudo -E src/install-terraform
