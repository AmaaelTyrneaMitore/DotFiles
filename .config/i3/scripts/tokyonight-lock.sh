#!/bin/sh

# alpha='dd'
alpha='99'
alphamagenta='dd'
background='#282a36'
selection='#24283b'
comment='#6272a4'

yellow='#f1fa8c'
orange='#e0af68'
red='#f7768e'
magenta='#bb9af7'
blue='#7aa2f7'
cyan='#7dcfff'
green='#9ece6a'

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
  --keyhl-color=$magenta$alphamagenta \
  --bshl-color=$orange$alpha \
  --separator-color=$selection$alpha \
  --verif-color=$green \
  --wrong-color=$red \
  --layout-color=$blue \
  --date-color=$blue \
  --time-color=$blue \
  --screen 1 \
  --blur 1 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%A %e %B %Y" \
  --verif-text="Validating " \
  --wrong-text="Wrong Key " \
  --noinput="No Input " \
  --lock-text="Locking " \
  --lockfailed="Lock Failed " \
  --time-font="JetBrainsMono Nerd Font" \
  --date-font="JetBrainsMono Nerd Font" \
  --layout-font="JetBrainsMono Nerd Font" \
  --verif-font="JetBrainsMono Nerd Font" \
  --wrong-font="JetBrainsMono Nerd Font" \
  --radius=122 \
  --ring-width=10 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \
