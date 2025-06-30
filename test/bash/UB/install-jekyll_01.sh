#!/usr/bin/env bash

source test/lib/test.bash
export INST64_RUBY_DEVELOPMENT='ON'
export INST64_SYSTEM_WIDE='YES'
sudo -E src/install-gcc &&
  sudo -E src/install-ruby ||
  exit $?

source /usr/local/bin/ruby.env

src/install-jekyll
