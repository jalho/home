#!/bin/sh

set -xe

sleep 5
feh --bg-fill "$(find ~/Pictures/wallpapers/ -type f | shuf -n 1)"
