#!/bin/env bash

echo "Setting default sink to HDMI"
CURRENT_SINK=$(pactl list short sinks | grep RUNNING | cut -f1)
BLUEZ_SINK=$(pactl list short sinks | grep bluez | cut -f1)
HDMI_SINK=$(pactl list short sinks | grep hdmi | cut -f1)


case $CURRENT_SINK in
  $BLUEZ_SINK)
    pactl set-default-sink $HDMI_SINK
    ;;
  $HDMI_SINK)
    pactl set-default-sink $BLUEZ_SINK
    ;;
  *)
    echo "WHAT?"
esac
