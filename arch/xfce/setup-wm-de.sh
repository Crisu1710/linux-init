yay -S --noconfirm\
  matcha-gtk-theme \
  papirus-icon-theme


xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/Super_L -s "xfce4-popup-whiskermenu"
xfconf-query -c xsettings -p /Net/ThemeName -s  "Matcha-dark-azul"
xfconf-query -c xsettings -p /Net/IconThemeName -s  "Papirus-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Matcha-dark-azul"
