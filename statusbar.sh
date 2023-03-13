#!/bin/sh

ram() {
	mem=$(free -h | awk '/Mem:/ { print $3 }' | cut -f1 -d 'i')
	echo "$mem"
}

cpu() {
	read -r cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 1
	read -r cpu a b c idle rest < /proc/stat
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
	echo 💻 "$cpu"%
	# echo 🖥️ "$cpu"%
}

network() {
	conntype=$(ip route | awk '/default/ { print substr($5,1,1) }')

	if [ -z "$conntype" ]; then
		echo "🚫 down"
	elif [ "$conntype" = "e" ]; then
		echo "🌐 up"
	elif [ "$conntype" = "w" ]; then
		echo "📡 up"
	fi
}

volume_pa() {
	muted=$(pactl list sinks | awk '/Mute:/ { print $2 }')
	vol=$(pactl list sinks | grep Volume: | awk 'FNR == 1 { print $5 }' | cut -f1 -d '%')

	if [ "$muted" = "yes" ]; then
		echo "🔇 muted"
	else
		if [ "$vol" -ge 60 ]; then
			echo "🔊 $vol%"
		elif [ "$vol" -ge 35 ]; then
			echo "🔉 $vol%"
		elif [ "$vol" -ge 0 ]; then
			echo "🔈 $vol%"
		fi
	fi

}

battery() {
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	if [ "$bat" -ge 40 ]; then
		echo "🔋 $bat%"
	else
		echo "🪫 $bat%"
	fi
}

battery_status() {
	bat_status=$(cat /sys/class/power_supply/BAT0/status)

	if [ "$bat_status" = "Full" ]; then
#		echo "⚡"
		echo "🔌"
	elif [ "$bat_status" = "Charging" ]; then
		echo "🔌"
	else
		echo "🫠"
	fi
}

clock() {
	dte=$(date +"%d/%m/%Y")
	time=$(date +"%H:%M")

	echo "📅 $dte ⏰ $time"
}

main() {
	while true; do
		xsetroot -name "$(cpu) $(ram) | $(network) | $(volume_pa) | $(battery_status)$(battery) | $(clock)"
		sleep 2
	done
}

main
