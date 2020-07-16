#!/bin/bash
# Project: Game Server Managers - LinuxGSM
# Author: Daniel Gibbs
# License: MIT License, Copyright (c) 2020 Daniel Gibbs
# Purpose: GitHub actions only classes a pass when the exitcode 0, when some tests require a non-zero exitcode to be classed as a pass.
# This script allows at test to pass when the expected exitcode will not be zero.
# Contributors: https://linuxgsm.com/contrib
# Documentation: https://docs.linuxgsm.com
# Website: https://linuxgsm.com

command=$1
excpectedexitcode=$2

${command}
exitcode=$?
if [ "${excpectedexitcode}" == "${exitcode}" ]; then
  exit 0
else
  exit 1
fi
