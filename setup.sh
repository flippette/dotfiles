#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

for item in $(ls -a); do
  ln -s "$item" "$XDG_CONFIG_HOME/$(basename $item)"
done
