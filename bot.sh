#!/bin/sh
rank=0
while :
do
	orank=$rank
	rank=$(curl -s https://scoresaber.com/u/76561198800357802 | grep "\"Player Ranking:" | cut -c 30-)
	[ "$orank" != "$rank" ] && dunstify "he is "$rank"th now change title" && echo "!settitle hello 👋 it is me 😊 the ${rank}th best beat saber player 😎 please come watch my stream 🥺" | xclip -sel clip
	sleep 1
done
