#!/bin/sh

while true; do
  find ~/photos -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
    shuf -n1 -z | xargs -0 feh --bg-max
  sleep 30m
done