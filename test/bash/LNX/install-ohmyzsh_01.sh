#!/usr/bin/env bash

source test/lib/check.bash
# Fake ZSH to by-pass installer pre-req check
sudo touch /bin/zsh
sudo chmod 755 /bin/zsh

src/install-ohmyzsh
