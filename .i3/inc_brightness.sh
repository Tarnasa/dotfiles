#!/bin/sh

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ $max_brightness -gt $brightness ]
then
    brightness=$(echo "$brightness + 5" | bc)
    echo $brightness | sudo tee /sys/class/backlight/intel_backlight/brightness
fi

