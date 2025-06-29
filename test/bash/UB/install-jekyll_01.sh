#!/usr/bin/env bash

source test/lib/test.bash
export INST64_RUBY_DEVELOPMENT='ON'
export INST64_SYSTEM_WIDE='YES'
sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-gcc &&
  sudo -E "${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-ruby ||
  exit $?

source /usr/local/bin/ruby.env

"${DEV_ENV_BASH_CONTAINER_PATH_SRC}/"install-jekyll
