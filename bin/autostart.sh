#!/bin/sh

# xrandr --output HDMI-1 --mode 1920x1080 --rate 144.00 --primary;
# xrandr --output eDP-1 --mode 1920x1200 --rate 60.00 --right-of HDMI-1;
xrandr --output DisplayPort-1 --mode 3440x1440 --rate 165.00 --primary;
setxkbmap pl;
# wal -R;
xwallpaper --zoom ~/dotfiles/wallpaper.png
