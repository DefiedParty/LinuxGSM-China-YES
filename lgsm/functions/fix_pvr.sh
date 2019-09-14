#!/bin/bash
# LinuxGSM fix_pvr.sh function
# Author: Daniel Gibbs
# Website: https://linuxgsm.com
# Description: Resolves various issues with Pavlov VR.

fn_print_information "starting ${gamename} server to generate configs."
fn_sleep_time
exitbypass=1
command_start.sh
sleep 20
exitbypass=1
command_stop.sh
rm -f "${servercfgfullpath}"
fn_check_cfgdir
array_configs+=( Game.ini )
fn_fetch_default_config
fn_default_config_remote
fn_default_config_local
fn_set_config_vars
