#!/usr/bin/env bash

source test/lib/check.bash
export INST64_RUBY_DEVELOPMENT='ON'
export INST64_SYSTEM_WIDE='YES'
sudo -E /source/install-gcc &&
  sudo -E /source/install-ruby ||
  exit $?

source /usr/local/bin/ruby.env

/source/install-jekyll
