#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch polybar with default config location
polybar stat 2>&1 | tee -a /tmp/polybar-stat.log & disown
polybar workspaces 2>&1 | tee -a /tmp/polybar-workspaces.log & disown
