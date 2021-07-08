#!/system/bin/sh
echo 80 > /sys/module/autocut_charger/parameters/maximum_charge_percentage
read $ostate < /sys/class/power_supply/battery/status
echo $ostate
while :; do
echo $ostate
	read $state < /sys/class/power_supply/battery/status
	[ "$ostate" != "$state" ] && ostate=$state && dumpsys batterystats --reset < /dev/null > /dev/null 2>&1 
done
