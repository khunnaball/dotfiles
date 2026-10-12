#!/bin/sh
# Prints battery percentage for the tmux status bar; prints nothing if there's no battery.
if command -v pmset >/dev/null 2>&1; then
  out=$(pmset -g batt 2>/dev/null | grep -o '[0-9]*%;[^;]*' | head -1)
  pct=${out%%;*}
  case "$out" in *discharging*) state="" ;; *) state="+" ;; esac
else
  bat=$(ls -d /sys/class/power_supply/BAT* 2>/dev/null | head -1)
  [ -n "$bat" ] || exit 0
  pct="$(cat "$bat/capacity")%"
  [ "$(cat "$bat/status")" = "Discharging" ] && state="" || state="+"
fi
[ -n "$pct" ] && printf '%s%s' "$pct" "$state"
