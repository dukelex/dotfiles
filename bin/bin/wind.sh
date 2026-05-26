#!/bin/bash

# get monitor list
monitors=$(niri msg -j outputs | jq -r 'keys | join(" ")')
read -ra monitor_array <<< "$monitors"

# set empty workspace at each monitor
for monitor in "${monitor_array[@]}"; do
    niri msg action focus-monitor $monitor
    niri msg action focus-workspace 100
    done

# focus the main monitor
niri msg action focus-monitor "DP-1"
