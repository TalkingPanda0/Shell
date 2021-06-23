#!/bin/sh
volsh=/mnt/DATA/Shell/volume.sh
case $1 in
	up)
		pactl set-sink-volume @DEFAULT_SINK@ +5% &&	arg="-i audio-volume-high" && msg=$($volsh)
		;;
	down)
		pactl set-sink-volume @DEFAULT_SINK@ -5% && arg="-i audio-volume-low" && msg=$($volsh)
		;;
	mute)
	pactl set-sink-mute @DEFAULT_SINK@ toggle && [ "$($volsh)" != "muted" ]  && msg="unmuted" arg="-i audio-volume-medium" || msg="muted" arg="-i audio-volume-muted"
	;;
esac
dunstify -t 900 $arg $msg
