#!/usr/bin/env bash

if [[ "$_DEV_TEST_BASH_CONTAINER_ENVIRONMENT" != 'ON' ]]; then
  echo 'Error: invalid test environment'
  exit 1
fi

# Fake ZSH to by-pass installer pre-req check
sudo touch /bin/zsh
sudo chmod 755 /bin/zsh

/source/install-ohmyzsh
