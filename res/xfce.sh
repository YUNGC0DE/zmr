#!/bin/bash
set -e

# Disable screensaver and power management
xset -dpms &
xset s noblank &
xset s 0 0 &
xset s off &

xrandr --output Virtual-1 --mode 1920x1080
# Start xfce
/usr/bin/startxfce4 --replace > "$HOME"/xfce.log &
sleep 1
cat "$HOME"/xfce.log