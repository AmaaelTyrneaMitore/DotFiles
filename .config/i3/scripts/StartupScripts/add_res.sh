#!/bin/sh

# this script run before the user desktop session starts
# it sets the resolution (i.e. my TV Monitor) to 1368x768

xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
xrandr --addmode HDMI1 "1368x768_60.00"
