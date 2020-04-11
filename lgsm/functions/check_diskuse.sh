#!/bin/bash
# LinuxGSM check_diskuse.sh function
# Author: Daniel Gibbs
# Website: https://linuxgsm.com
# Description: Checks that there is enough disk space to install and update a game server.

diskavail=$((diskuse-availspace+rootdirdu))

if [ "${diskavail}" -le  "0" ]; then
  fn_print_warning_nl "Not enough disk space to install this game server"
fi
