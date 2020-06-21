#!/bin/bash
# LinuxGSM check_customfiles.sh function
# Author: Daniel Gibbs
# Website: https://linuxgsm.com
# Description: Manages customfiles symlinks to serverfiles.

# Sync directories from serverfiles to customfiles
rsync -av -f"+ */" -f"- *" "${serverfiles}" "${customfiles}"

# Remove Broken symlinks
cd "${serverfiles}"
find . -xtype l -delete

#Add new symlinks
cd "${customfiles}"
find . -f -exec ln -vs "{}" ${serverfiles}/ ';'
