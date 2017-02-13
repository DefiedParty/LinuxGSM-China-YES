#!/bin/bash
# LGSM fix_csb.sh function
# Author: Alexander Hurd
# Website: https://gameservermanagers.com
# Description: Resolves various issues with  Counter-Strike Beta;.

local commandname="FIX"
local commandaction="Fix"

export LD_LIBRARY_PATH=${filesdir}:${LD_LIBRARY_PATH}

echo "exec ${servercfg} > ${servercfgdir}/${servercfgdefault}"
