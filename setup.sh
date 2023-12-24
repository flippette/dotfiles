#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

ln -s -t "$XDG_CONFIG_HOME" $(find . -maxdepth 1 -type d ! -name '.*' | cut -c3-)
