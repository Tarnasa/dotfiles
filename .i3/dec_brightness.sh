#!/bin/sh

brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ $brightness -gt 0 ]
then
    brightness=$(echo "$brightness - 5" | bc)
    echo $brightness | sudo tee /sys/class/backlight/intel_backlight/brightness
fi

