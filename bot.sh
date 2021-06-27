#!/bin/sh
user=76561198800357802
getsuffix () {
	[ $(echo $1 | rev | cut -c 2 | rev) -eq 1 ] && echo "th" && return
	case $(echo $1 | rev | cut -c 1 | rev ) in
		1)echo "st";;
		2)echo "nd";;
		3)echo "rd";;
		[4-9])echo "th";;
	esac
}
while :; do
	rank=$(curl -s https://scoresaber.com/u/$user | grep "\"Player Ranking:" | cut -c 30- )
	rank=${rank}$(getsuffix $rank) 
	[ "$orank" != "$rank" ] && (orank=$rank && dunstify "he is ${rank} now. copied the command" &&
	echo "!settitle hello 👋 it is me 😊 the ${rank} best beat saber player 😎 please come watch my stream 🥺" | xclip -sel clip)
done
