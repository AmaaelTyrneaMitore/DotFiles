#!/bin/sh

alpha='dd'
background='#282a36'
selection='#3c5d61'
comment='#6272a4'

yellow='#f1fa8c'
orange='#ffb86c'
red='#ff5555'
#magenta='#ff79c6'
magenta='#0fd5b8'
blue='#2f3e43'
cyan='#8be9fd'
green='50fa7b'

i3lock \
  --insidever-color=$selection$alpha \
  --insidewrong-color=$selection$alpha \
  --inside-color=$selection$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ring-color=$blue$alpha \
  --line-uses-ring \
  --keyhl-color=$magenta$alpha \
  --bshl-color=$orange$alpha \
  --separator-color=$selection$alpha \
  --verif-color=$green \
  --wrong-color=$red \
  --layout-color=$blue \
  --date-color=$magenta \
  --time-color=$magenta \
  --screen 1 \
  --blur 1 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%A %e %B %Y" \
  --verif-text="Checking..." \
  --wrong-text="Wrong pswd" \
  --noinput="No Input" \
  --lock-text="Locking..." \
  --lockfailed="Lock Failed" \
  --time-font="JetBrainsMono Nerd Font" \
  --date-font="JetBrainsMono Nerd Font" \
  --layout-font="JetBrainsMono Nerd Font" \
  --verif-font="JetBrainsMono Nerd Font" \
  --wrong-font="JetBrainsMono Nerd Font" \
  --radius=120 \
  --ring-width=10 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \
