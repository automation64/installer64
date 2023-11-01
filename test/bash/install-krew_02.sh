#!/usr/bin/env bash

declare test_status=0

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

sudo /opt/installer64/install-krew

test_status=$?

((test_status > 0))
