#!/bin/sh
rm -f /tmp/rank
user=76561198800357802
getsuffix () {
	[ "$(echo $1 | rev | cut -c 2 | rev)" = "1" ] && echo "th" && return
	case $(echo $1 | rev | cut -c 1 | rev ) in
		1)echo "st";;
		2)echo "nd";;
		3)echo "rd";;
		[4-9])echo "th";;
	esac
}
while :; do
rank=$(curl https://scoresaber.com/u/$user -o /tmp/rank 2> /tmp/curl.log && grep "\"Player Ranking:" /tmp/rank | cut -c 30- || continue)
	! [ -z $rank ] && [ "$orank" != "$rank" ] && orank=$rank && rank=${rank}$(getsuffix $rank) && dunstify "he is ${rank} now. copied the command" &&
	echo "!settitle hello 👋 it is me 😊 the ${rank} best beat saber player 😎 please come watch my stream 🥺" | xclip -sel clip 
done
