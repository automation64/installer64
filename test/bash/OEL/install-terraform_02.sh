#!/usr/bin/env bash

source test/lib/test.bash
export INST64_SYSTEM_WIDE='YES'
export INST64_TERRAFORM_METHOD='EXTERNAL'
sudo -E src/install-terraform
