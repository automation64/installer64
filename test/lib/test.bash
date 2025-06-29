#!/usr/bin/env bash
#
# Test Library
#
# * Must be the first sourced line in the test script
#
#

#
# Globals
#

export BL64_LIB_CICD="YES"
export INST64_BASHLIB64="${DEV_ENV_BASH_CONTAINER_PATH_ROOT}/lib/bl64"
export INST64_LIB_PATH="$DEV_ENV_BASH_CONTAINER_PATH_SRC"

#
# Functions
#

function _lib_test_home_remove_at64() {
  if [[ -d "$HOME/at64" ]]; then
    rm -rf "$HOME/at64" 2> /dev/null
  fi
  if sudo test -d /root/at64; then
    sudo rm -rf /root/at64 2> /dev/null
  fi
}

function _lib_test_home_remove_local() {
  for path in .local .config .cache .env.d .var .tmp; do
    if [[ -d "$HOME/$path" ]]; then
      rm -rf "$HOME/$path" 2> /dev/null
    fi
  done
}

#
# Main
#

if [[ "$(uname -s)" == 'Linux' ]]; then
  if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
    echo 'error: Test must be executed inside a container'
    exit 1
  fi
else
  if [[ "$DEV_TEST_BASH_RUNNER_ENVIRONMENT" != 'ON' ]]; then
    echo 'error: Test must be executed inside a CICD runner'
    exit 1
  fi
fi

if [[ "$DEV_TEST_BASH_CONTAINER_ENVIRONMENT" == 'ON' ]]; then
  INST64_BASHLIB64="${DEV_ENV_BASH_CONTAINER_PATH_ROOT}/lib/bl64"
  INST64_LIB_PATH="$DEV_ENV_BASH_CONTAINER_PATH_SRC"
else
  INST64_BASHLIB64='lib/bl64'
  INST64_LIB_PATH='src'
fi

[[ ! -d "$INST64_BASHLIB64" ]] && echo "error: BASHLIB64 not found (${INST64_BASHLIB64})" && exit 1

[[ ! -d "$DEV_ENV_BASH_CONTAINER_PATH_SRC" ]] && echo "error: source path not found (${DEV_ENV_BASH_CONTAINER_PATH_SRC})" && exit 1
