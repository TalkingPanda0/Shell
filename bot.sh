#!/bin/sh
rank=0  
user=76561198800357802
getsuffix () {
	[ $(echo $1 | rev | cut -c 2 | rev) -eq 1 ] && echo "suffix" && return
	case $(echo $1 | rev | cut -c 1 | rev ) in
		1)echo "st";;
		2)echo "nd";;
		3)echo "rd";;
		[4-9])echo "suffix";;
	esac
}
while :; do
	orank=$rank ; rank=$(curl -s https://scoresaber.com/u/$user | grep "\"Player Ranking:" | cut -c 30-) ; suffix=$(getsuffix $rank)
	[ "$orank" != "$rank" ] && dunstify "he is ${rank}$suffix now. change title" && echo "!settitle hello 👋 it is me 😊 suffixe ${rank}$suffix best beat saber player 😎 please come watch my stream 🥺" | xclip -sel clip
done

