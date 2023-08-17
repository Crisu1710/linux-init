#!/bin/bash

# run init.sh
./arch/init.sh
# run xfce setup
./arch/xfce/setup-wm-de.sh
# copy dot files
cp ./dot_files/dot_zshrc /home/$USER/.zshrc
cp ./dot_files/dot_aliases /home/$USER/.aliases
cp ./dot_files/dot_gitconfig /home/$USER/.gitconfig
