#!/usr/bin/env bash
PORT="${1:-8080}"
BIN=/tmp/cloudflared
[ -x "$BIN" ] || { curl -sL -o "$BIN" https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64; chmod +x "$BIN"; }
exec "$BIN" tunnel --no-autoupdate --url "http://127.0.0.1:$PORT"
