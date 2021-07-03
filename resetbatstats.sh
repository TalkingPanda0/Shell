#!/system/bin/sh
echo 80 > /sys/module/autocut_charger/parameters/maximum_charge_percentage
while :; do
	state=$(cat /sys/class/power_supply/battery/status)
	[ "$ostate" != "$state" ] && ostate=$state && dumpsys batterystats --reset < /dev/null > /dev/null 2>&1  && echo "reset"
done
