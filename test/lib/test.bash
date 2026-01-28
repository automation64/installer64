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

export INST64_BASHLIB64=''
export INST64_LIB_PATH=''

#
# Functions
#

function _lib_test_sys_remove_inst64() {
  if [[ -d "/opt/inst64" ]]; then
    sudo rm -rf /opt/inst64 2>/dev/null
  fi
}

function _lib_test_sys_remove_bl64() {
  if [[ -d "/opt/bl64" ]]; then
    sudo rm -rf /opt/bl64 2>/dev/null
  fi
}

function _lib_test_home_remove_at64() {
  if [[ -d "$HOME/at64" ]]; then
    rm -rf "$HOME/at64" 2>/dev/null
  fi
  if sudo test -d /root/at64; then
    sudo rm -rf /root/at64 2>/dev/null
  fi
}

function _lib_test_home_remove_local() {
  for path in .local .config .cache .env.d .var .tmp; do
    if [[ -d "$HOME/$path" ]]; then
      rm -rf "$HOME/$path" 2>/dev/null
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
  if [[ -n "$DEV_ENV_BASH_CONTAINER_PATH_ROOT" ]]; then
    INST64_BASHLIB64="${DEV_ENV_BASH_CONTAINER_PATH_ROOT}/lib/bl64"
    INST64_LIB_PATH="$DEV_ENV_BASH_CONTAINER_PATH_SRC"
    [[ ! -d "$DEV_ENV_BASH_CONTAINER_PATH_SRC" ]] && echo "error: source path not found (${DEV_ENV_BASH_CONTAINER_PATH_SRC})" && exit 1
  fi
elif [[ "$DEV_TEST_BASH_RUNNER_ENVIRONMENT" == 'ON' ]]; then
  if [[ -n "$GITHUB_WORKSPACE" ]]; then
    DEV_ENV_BASH_CONTAINER_PATH_ROOT="$GITHUB_WORKSPACE"
  else
    DEV_ENV_BASH_CONTAINER_PATH_ROOT="$(pwd)"
  fi
  DEV_ENV_BASH_CONTAINER_PATH_SRC="${DEV_ENV_BASH_CONTAINER_PATH_ROOT}/src"
  INST64_BASHLIB64="${DEV_ENV_BASH_CONTAINER_PATH_ROOT}/lib/bl64"
  INST64_LIB_PATH="$DEV_ENV_BASH_CONTAINER_PATH_SRC"
  [[ ! -d "$DEV_ENV_BASH_CONTAINER_PATH_SRC" ]] && echo "error: source path not found (${DEV_ENV_BASH_CONTAINER_PATH_SRC})" && exit 1
else
  INST64_BASHLIB64='/opt/bl64'
  INST64_LIB_PATH='src'
fi
if [[ -n "$INST64_BASHLIB64" ]]; then
  [[ ! -d "$INST64_BASHLIB64" ]] && echo "error: BASHLIB64 not found (${INST64_BASHLIB64})" && exit 1
fi
