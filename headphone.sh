#!/bin/sh
C="/tmp/vol"
pactl list cards | grep "Headphones" | grep -q "not" && ( echo " " && grep -q "h" $C && dunstify -i audio-headphones-symbolic "Unplugged"; echo "s" > $C ) || (echo "" && grep -q "s" $C && dunstify -i audio-headphones-symbolic "Plugged in"; echo "h" > $C)
