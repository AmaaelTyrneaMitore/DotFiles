#!/usr/bin/env bash

xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
xrandr --addmode HDMI1 "1368x768_60.00"
sleep 2
xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --primary --mode 1368x768_60.00 --pos 1920x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off

