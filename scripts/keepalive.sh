#!/usr/bin/env bash
while true; do echo "$(date -u +%FT%Z!) alive" >> /tmp/keepalive.log; sleep 180; done
