#!/bin/bash

# run init.sh
./arch/init.sh
./general/vs-code.sh
# run xfce setup
./arch/xfce/setup-wm-de.sh
# bluetooth
systemctl enable bluetooth
systemctl start bluetooth
# copy dot files
cp ./dot_files/dot_zshrc /home/$USER/.zshrc
cp ./dot_files/dot_aliases /home/$USER/.aliases
cp ./dot_files/dot_gitconfig /home/$USER/.gitconfig
# firefox remove tab bar
cp ./firefox/userChrome.css /home/$USER/.mozilla/firefox/*.default-release/chrome/userChrome.css
