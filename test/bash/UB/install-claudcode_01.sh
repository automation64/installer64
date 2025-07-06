#!/usr/bin/env bash

source test/lib/test.bash
sudo -E src/install-nodejs

src/install-claudcode
