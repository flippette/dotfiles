#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch polybar with default config location
polybar default 2>&1 | tee -a /tmp/polybar.log & disown
