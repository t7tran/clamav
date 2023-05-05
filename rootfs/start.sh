#!/usr/bin/env sh

if [[ $# -gt 0 ]]; then
  if [[ $1 == "client" ]]; then
    trap : TERM INT; tail -f /dev/null & wait
    exit 0
  else
    exec "$@"
  fi
fi

# Bootstrap the database if clamav is running for the first time
[ -f /clamav/main.cvd ] || freshclam

# Run the update daemon
freshclam -d -c 6

# Run clamav
exec clamd
