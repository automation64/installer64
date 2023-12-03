#!/usr/bin/env bash

if [[ "$INST64_TEST_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_RUBY_DEVELOPMENT='ON'
sudo /opt/installer64/install-gcc &&
  sudo -E /opt/installer64/install-ruby ||
  exit $?

source /usr/local/bin/installer64-ruby.env

/opt/installer64/install-jekyll
