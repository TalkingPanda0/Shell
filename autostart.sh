#!/bin/sh
setxkbmap tr &
xinput --set-prop 12 'libinput Accel Speed' -1 
numlockx on &
dunst &
picom &
#dbus-launch --sh-syntax --exit-with-session; pulseaudio --kill; pipewire &
slstatus & 
feh --bg-center wallpapers/wall.png &
#xss-lock -n /usr/lib/xsecurelock/dimmer -l -- physlock &

