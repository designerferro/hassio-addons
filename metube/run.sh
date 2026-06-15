#!/bin/sh

DOWNLOAD_PATH=$(jq -r '.download_path // empty' /data/options.json)
PUID=$(jq -r '.puid // empty' /data/options.json)
PGID=$(jq -r '.pgid // empty' /data/options.json)

[ -n "$DOWNLOAD_PATH" ] && export DOWNLOAD_DIR="$DOWNLOAD_PATH"
[ -n "$DOWNLOAD_PATH" ] && export STATE_DIR="$DOWNLOAD_PATH/.metube"
[ -n "$DOWNLOAD_PATH" ] && export TEMP_DIR="$DOWNLOAD_PATH"

[ -n "$PUID" ] && export PUID="$PUID"
[ -n "$PGID" ] && export PGID="$PGID"

echo "DOWNLOAD_DIR=$DOWNLOAD_DIR"
echo "STATE_DIR=$STATE_DIR"
echo "TEMP_DIR=$TEMP_DIR"
echo "PUID=$PUID"
echo "PGID=$PGID"

exec /app/docker-entrypoint.sh