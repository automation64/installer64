#!/usr/bin/env bash

declare test_status=0

sudo /opt/installer64/install-krew

test_status=$?

((test_status > 0))
