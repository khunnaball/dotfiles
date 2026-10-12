#!/bin/sh
# Prints the host an ssh process under the given pane PID is connected to.
# Usage: ssh-host.sh <pane_pid>
if [ "$(ps -o comm= -p "$1")" = ssh ]; then pid=$1; else pid=$(pgrep -P "$1" -x ssh | head -1); fi
[ -n "$pid" ] || exit 0
set -- $(ps -o args= -p "$pid")
shift  # drop "ssh"
while [ $# -gt 0 ]; do
  case "$1" in
    -[BbcDEeFIiJLlmOopQRSWw]) shift 2 ;;   # options that take a value
    -*) shift ;;
    *) host=${1#*@}; break ;;
  esac
done
[ -n "$host" ] && printf '%s' "$host"
