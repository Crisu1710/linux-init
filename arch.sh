#!/bin/bash

# run init.sh
./arch/init.sh
./general/vs-code.sh
# run xfce setup
./arch/xfce/setup-wm-de.sh
# run services
./general/services.sh
# run general/zsh.sh
#
# run copy dot files
./dot_files/copy.sh
# run firefox copy css
./firefox/copy.sh
# set timezone
timedatectl set-timezone Europe/Berlin
