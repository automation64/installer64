export BL64_LIB_CICD="YES"

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
