#!/bin/bash

# Define the panel's properties
panel_id="panel-1"  # Unique ID for the new panel
panel_length="100"       # Length of the panel (percentage of screen width)
panel_position="t"       # Panel position ('t' for top, 'b' for bottom, 'l' for left, 'r' for right)
panel_size=35          # Preferred size of the panel
num_plugins=2

# Create the new panel
#xfconf-query -c xfce4-panel -p /panels -a -t int -s $num_plugins -n

# Set panel properties
#xfconf-query -c xfce4-panel -p /panels/$panel_id -t string -s "" -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/length -t int -s $panel_length -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/position -t string -s $panel_position -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/position-numeric -t int -s 0 -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/size -t int -s $panel_size -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/position-locked -t bool -s true -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/enable-struts -t bool -s true -n
xfconf-query -c xfce4-panel -p /panels/$panel_id/output-name -t string -s "Primary" -n

for ((i = 1; i <= num_plugins; i++)); do
    plugin_id=$(xfconf-query -c xfce4-panel -p /panels/$panel_id/plugin-ids -l | awk -v i="$i" 'NR==i')
    xfconf-query -c xfce4-panel -p /plugins/plugin-$plugin_id -n -t string -s ""
done

xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids -t int -s 1 -t int -s 2 -n #-t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -t int -s 17 -s 16 -s 14 -s 15 -s 18 -s 2 -s 3 -s 19 -s 5 -s 1 -s 7 -s 6 -s 8 -s 9 -s 10 -s 13 -s 11 -s 12 -s 4 -n

xfconf-query -c xfce4-panel -p /plugins/plugin-1 -t string -s "whiskermenu" -n
xfconf-query -c xfce4-panel -p /plugins/plugin-2 -t string -s "tasklist" -n

# Restart the panel to apply changes
xfce4-panel -r
