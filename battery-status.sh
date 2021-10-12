#!/bin/bash
while true
do
  battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
   if [ $battery_level -le 12 ]; then
      notify-send --urgency=CRITICAL "Bateria vazia" "Level: ${battery_level}%"
      paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
  fi
 sleep 60
done
