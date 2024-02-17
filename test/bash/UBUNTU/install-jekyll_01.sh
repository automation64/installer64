#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

export INST64_RUBY_DEVELOPMENT='ON'
sudo ${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-gcc &&
  sudo -E ${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-ruby ||
  exit $?

source /usr/local/bin/installer64-ruby.env

${DEV_ENV_BASH_CONTAINER_PATH_SRC}/install-jekyll
