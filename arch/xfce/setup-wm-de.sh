yay -S --noconfirm\
  matcha-gtk-theme \
  papirus-icon-theme


xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/Super_L -s "xfce4-popup-whiskermenu" -n -t string
xfconf-query -c xsettings -p /Net/ThemeName -s  "Matcha-dark-azul"
xfconf-query -c xsettings -p /Net/IconThemeName -s  "Papirus-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Matcha-dark-azul"
xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids --force-array -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int  -s 17 -s 16 -s 14 -s 15 -s 18 -s 2 -s 3 -s 19 -s 5 -s 1 -s 7 -s 6 -s 8 -s 9 -s 10 -s 13 -s 11 -s 12 -s 4 -n
