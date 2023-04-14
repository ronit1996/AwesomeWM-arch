#! /bin/bash
sinks=$(pactl list sinks | grep "Sink" | tr -dc '0-9')
pactl -- set-sink-volume ${sinks: -1} -10%
pactl -- set-sink-volume ${sinks:0:1} -10%
