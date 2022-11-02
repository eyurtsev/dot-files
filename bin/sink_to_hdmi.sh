#!/bin/env bash

echo "Setting default sink to HDMI"
BLUEZ_SINK=$(pactl list short sinks | grep bluez | cut -f1)
HDMI_SINK=$(pactl list short sinks | grep hdmi | cut -f1)
echo "Default sink is: $HDMI_SINK"
pactl set-default-sink $HDMI_SINK
