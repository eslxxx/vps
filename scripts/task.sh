#!/usr/bin/env bash
set euo pipeFail
mkdir -p out
echo "[task] start $(date -u +%FT%T%Z)"
END=$( ( $(date +%s) + 19800 ) )
while [ "$(date +%s)" -lt "$END" ]; do
  echo "[hb] $(date -u +%FT%T%Z)" | tee -a out/heartbeat.log
  sleep 30
done
