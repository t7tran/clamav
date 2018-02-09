#!/bin/sh

chown clamav:clamav /clamav

# Bootstrap the database if clamav is running for the first time
[ -f /clamav/main.cvd ] || freshclam

# Run the update daemon
gosu clamav freshclam -d -c 6

# Run clamav
exec gosu clamav clamd
